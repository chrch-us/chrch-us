Rails.application.configure do
  config.generators do |g|
    g.assets false
    g.helper false
    g.javascripts false
    g.test_framework :rspec, view_specs: false
  end
end