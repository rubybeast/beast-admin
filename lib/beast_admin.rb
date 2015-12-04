# coding: utf-8
require 'beast_admin/version'
require 'beast_admin/base_controller'
require 'beast_admin/config'
require 'beast_admin/routes'
require 'beast_admin/router'

# require 'beast_admin/generators/install/install_generator'

module BeastAdmin

  def self.config
    @@config || Config.new
  end

  def self.configure
    @@config = Config.new
    yield @@config
  end

  # Create all routes
  # @param mapper [ActionDispatch::Routing::Mapper]
  # @example
  #   # in ../config/routes.rb file
  #   BeastAdmin.draw_routes(self)
  def self.draw_routes(mapper)
    Router.draw_routes(mapper)
  end

  # Get Routes object
  # @return [BeastAdmin::Routes]
  def self.routes
    Routes.inst
  end

end
