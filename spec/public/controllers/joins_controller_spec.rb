require 'rails_helper'

RSpec.describe Public::JoinsController, :type => :controller do
  describe "#new" do
    context 'when the join email is not set' do
      it 'redirects to the root route' do
        get :new
        expect(response).to redirect_to root_path
      end
    end
  end
end
