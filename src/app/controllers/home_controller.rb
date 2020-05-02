# frozen_string_literal: true

# Controller for the home page already made for you
class HomeController < ApplicationController
  # No sign in needed to access these pages
  # Overrides ApplicationController's instructions to check for login by default
  skip_before_action :authenticate_user!
  layout "home", :only => [:index]
  layout "application", :only => [:dashboard]

  # GET /
  #
  # This method is empty, yet it works?
  # Rails controller methods can be completely empty and work just fine.
  # It's the name of the method matching to a html.erb file that
  # makes the link between the files.
  # Find me @ app/views/home/index.html.erb
  #
  # Also, any local variable made inside this method will also exist
  # in the view to be displayed. Do not look up information within the
  # view itself. Do it here, please!

  def index  
    @municipality_social_data = MunicipalitySocialDatum.all
    @choices = Array.new
    @municipality_social_data.each do |municipality_social_datum|
      if (@choices.include?(municipality_social_datum.name) === false)
        @choices.push(municipality_social_datum.name)
      end
    end
  end

  def dashboard
    @municipality_social_data = MunicipalitySocialDatum.all
    @choices = Array.new
    @municipality_social_data.each do |municipality_social_datum|
      if (@choices.include?(municipality_social_datum.name) === false)
        @choices.push(municipality_social_datum.name)
      end
    end
  end
end
