require 'rails_helper'

RSpec.describe 'the joins resource', type: :routing do
  it 'has a new route' do
    expect(get: new_join_path).to be_routable
  end
  
  describe 'the new route' do
    it "routes to the joins controller's new method" do
      expect(get: new_join_path).to route_to "public/joins#new"
    end
  end
end