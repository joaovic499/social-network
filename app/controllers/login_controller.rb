class LoginController < ApplicationController

  protect_from_forgery with: :null_session

  def home
    redirect_to @home
  end

  def new
    @login = Login.new
  end

  def register
    @login = Login.new(login_params)

    if @login.save
      render :home
    else 
      render :new, status: :unprocessable_entity
    end
  end

  private def login_params
    params.require(:form).permit(:email, :name, :password)
  end
end