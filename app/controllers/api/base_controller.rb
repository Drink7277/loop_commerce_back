class Api::BaseController < ApplicationController
  private

  def render_errors(message, status: :unprocessable_entity)
    render json: { errors: Array.wrap(message) }, status: status
  end

  def current_user
    @current_user ||= User.find_by(auth_token: auth_token)
  end

  def auth_token
    request.headers["Authorization"]&.split(" ")&.last
  end
end
