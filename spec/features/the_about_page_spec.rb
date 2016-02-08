require 'rails_helper'

feature "The homepage", :type => :feature do
  it "exists" do
    visit about_path
    expect(page).to have_selector 'html'
  end
end
