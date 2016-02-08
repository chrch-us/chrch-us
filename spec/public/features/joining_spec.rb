require 'rails_helper'

RSpec.describe 'new joins', type: :feature do
  it "redirects to the root if an email hasn't been set on the session" do
    visit new_join_path
    expect(page).to have_current_path root_path
  end
end