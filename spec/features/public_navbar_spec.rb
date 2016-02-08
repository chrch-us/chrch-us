require 'rails_helper'

feature "The public navbar", :type => :feature do
  it "has a title with a link to the homepage" do
    visit '/'
    within('nav') do
      expect(page).to have_link 'chrch.us', href: root_path
    end
  end
  
  describe "nav links" do
    they "have a link to the about page" do
      visit '/'
      within('nav .nav-links') do
        expect(page).to have_link 'about', href: about_path
      end
    end
  end
end
