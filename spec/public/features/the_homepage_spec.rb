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
        expect(page).to have_css 'form.join'
      end
    end
    
    # describe "the join form" do
    #   let(:join_form) { welcome_section.find('.join') }
    # end
  end
end
