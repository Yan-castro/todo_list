# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# The main application class for the TodoList application.
module TodoList
  # The Rails application class.
  class Application < Rails::Application
    config.load_defaults 7.0
  end
end
