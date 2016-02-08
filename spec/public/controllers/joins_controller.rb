require 'rails_helper'

RSpec.describe Public::JoinsController, :type => :controller do
  describe "#new" do
    it "renders the new join page" do
      get :new
      expect(page).to render_template(:new)
    end
  end
end
