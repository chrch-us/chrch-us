require 'rails_helper'

RSpec.describe "the new joins resource", type: :routing do
  it "includes a post route" do
    expect(post: new_joins_path).to be_routable
  end
  
  describe "the post route" do
    it "routes to the new joins controller's create action" do
      expect(post: new_joins_path).to route_to "public/new_joins#create"
    end
  end
end