class UsersController < ApplicationController
  def show
    if current_user.first_name
      @message = "Hi #{current_user.first_name.capitalize}, welcome to your dashboard!"
    else
      @message = "Welcome to your dashboard!"
    end
  end
end
