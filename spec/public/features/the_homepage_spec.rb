require 'rails_helper'

feature "The homepage", :type => :feature do
  background(:each) do
    visit '/'
  end
  it "exists" do
    expect(page).to have_selector 'html'
  end
  
  it "has the correct title" do
    expect(page).to have_title 'chrch.us | a place for everyone'
  end
  
  it "has the correct body class" do
    expect(page).to have_css 'body.public-pages-home'
  end
  
  it "renders the navbar" do
    expect(page).to have_css '#application-header nav'
  end
  
  it "has a welcome section" do
    within('#application-body') do
      expect(page).to have_css '#welcome'
    end
  end
  
  describe "welcome section" do
    let(:welcome_section) { find('#welcome') }
    
    it "has a join form" do
      within(welcome_section) do
        expect(page).to have_css 'form.new-join'
      end
    end
    
    describe "the join form" do
      let(:join_form) { welcome_section.find('form.new-join') }
      
      it "requires an email address", js: true do
        within(join_form) do
          click_on "join"
        end
        
        expect(page).to have_current_path root_path
      end
      
      it "redirects to the join page on submit" do
        within(join_form) do
          fill_in "email", with: "test@example.com"
          click_on "join"
        end
        
        expect(page).to have_current_path(new_join_path)
      end
    end
  end
end
