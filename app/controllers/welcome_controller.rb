class WelcomeController < ApplicationController
  skip_before_action :authorize_request, only: :index
  skip_before_action :verify_authenticity_token, :only => :index
end
