class ApplicationController < ActionController::API
  before_action :authenticate_user!
  skip_before_action :authenticate_user!

  def authenticate_user!
    render json: { errors: ["Unauthorized"] }, status: 401 unless user_signed_in?
  end

  def user_signed_in?
    !!current_user
  end

  # a method that finds the user
  def current_user
    @current_user ||= User.find(decoded_token[:id]) if id_found?
  rescue
    nil
  end

  private

  # another method that checks if we have found a user id inside the decoded token
  def id_found?
    token && decoded_token && decoded_token[:id]
  end

  # a method to decode the token using the Auth class if a token was found
  def decoded_token
    @decoded_token ||= Auth.decode(token) if token
  end

  # lets get the token
  def token
    @token ||= if request.headers['Authorization'].present?
      request.headers['Authorization'].split.last
    end
  end

end
