class SessionsController < ApplicationController
  def new
    user = User.find_by(email: params[:session][:email].downcase)
  end
end
