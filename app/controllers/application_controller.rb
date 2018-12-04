class ApplicationController < ActionController::Base
  include CurrentCart
  before_action :set_cart
  before_action :authorize
  protect_from_forgery with: :exception
  def authorize
    unless  User.find_by(id: session[:user_id])
      redirect_to login_url, notice: "please Log in"
    end
  end
end
