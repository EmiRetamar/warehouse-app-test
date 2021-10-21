class PingController < ApplicationController

  skip_before_action :authorize_request, only: :index
  skip_before_action :verify_authenticity_token, :only => :index

  def index
    response = { message: 'OK' }
    json_response(response, :ok)
  end

end
