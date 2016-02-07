require "rails_helper"

RSpec.describe "The root route", type: :routing do
  it "is routable" do
    expect(get: "/").to be_routable
  end
  
  it "routes to pages#home" do
    expect(get: "/").to route_to "public/pages#home"
  end
end