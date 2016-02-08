require "rails_helper"

RSpec.describe "Page routes", type: :routing do
  they "include an about route" do
    expect(get: about_path).to be_routable
  end
  
  describe "about" do
    it "routes to the pages controller" do
      expect(get: about_path).to route_to "public/pages#about"
    end
  end
end