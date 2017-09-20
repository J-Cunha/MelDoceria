ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'rubygems'
require 'rails/command'
require 'rails/commands/server/server_command'

module Rails
  class Server
    def default_options
      super.merge({Port: 3000, Host: '192.168.0.55'})
    end
  end
end
