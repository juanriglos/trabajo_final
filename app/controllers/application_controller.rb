class ApplicationController < ActionController::Base
  include ActionController::MimeResponds
  protect_from_forgery with: :exception
  before_action :require_login

  private
  def not_authenticated
    redirect_to login_path, alert: "Please login first"
  end
end
