require 'rails_helper'

RSpec.describe Public::NewJoinsController, :type => :controller do
  describe "#create" do
    it "redirects to the new join route" do
      post :create
      expect(response).to redirect_to new_join_path
    end
  end
end
