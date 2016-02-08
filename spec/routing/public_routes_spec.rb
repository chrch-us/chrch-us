require "rails_helper"

RSpec.describe "Public routes", type: :routing do
  they "have an about route" do
    expect(get: about_path).to be_routable
  end
  
  it "routes to the pages controller" do
    expect(get: about_path).to route_to "public/pages#about"
  end
end