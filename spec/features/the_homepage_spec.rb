require 'rails_helper'

feature "The homepage", :type => :feature do
  it "exists" do
    visit '/'
    expect(page).to have_selector 'html'
  end
  
  it "has the correct title" do
    visit '/'
    expect(page).to have_title 'chrch.us | a place for everyone'
  end
  
  it "has the correct body class" do
    visit '/'
    expect(page).to have_css 'body.public-pages-home'
  end
end
