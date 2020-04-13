# frozen_string_literal: true

# This is the main controller for the entire project
# Every other controller will inherit from this one
# If there is a behavior or method you want for all controllers,
# it goes here. If that method is a helper, don't add it here,
# but in the helpers folder. They will be avalable in their
# respected views.
class ApplicationController < ActionController::Base
  # If someone tried to pretend to be someone else, an error occurs for them
  protect_from_forgery with: :exception
  # See if the current user is logged in
  before_action :authenticate_user!

  layout :layout

  private

  def layout
    # only turn it off for login pages:
    is_a?(Devise::SessionsController) ? false : "application"
    # or turn layout off for every devise controller:
    !devise_controller? && "application"
  end
end
