require 'rails_helper'

RSpec.describe Public::NewJoinsController, :type => :controller do
  describe "#create" do
    it "sets the join_email on the session" do
      join_email = 'test@example.com'
      post :create, params: {email: join_email}
      expect(session[:join_email]).to eq join_email
    end
    
    it "redirects to the new join route" do
      post :create
      expect(response).to redirect_to new_join_path
    end
  end
end
