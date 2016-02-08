require 'rails_helper'

RSpec.describe 'new joins', type: :feature do
  context "when the join email hasn't been set on the session" do
    it "redirects to the root if an email hasn't been set on the session" do
      visit new_join_path
      expect(page).to have_current_path root_path
    end
  end
  
  context "when the join email has been set on the session" do
    let(:join_email) { "test@example.com" }
    
    before(:each) do
      visit root_path
      within('.new-join') do
        fill_in "email", with: join_email
        click_on "join"
      end
    end
    
    it "renders the new join route" do
      expect(page).to have_current_path new_join_path
    end
    
    it "renders the join form" do
      expect(page).to have_css "form.join"
    end
  end
end