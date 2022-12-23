require_relative "boot"

require "rails/all"

require_relative "../app/services/onet_web_service"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module InstituteApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    config.after_initialize do
      # Initialize the OnetWebService class with the necessary credentials
      username = "davincischools_insti"
      password = "8557xzm"
      $onet_web_service = OnetWebService.new(username, password)
    end
  end
end
