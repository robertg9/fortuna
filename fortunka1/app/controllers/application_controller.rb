require "application_responder"

class ApplicationController < ActionController::Base
  include ControllerAuthentication
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery
end
