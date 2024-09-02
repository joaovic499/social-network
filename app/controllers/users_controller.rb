class UsersController < ApplicationController

  protect_from_forgery with: :null_session

  def home
    redirect_to @home
  end

  def new
    @error = "Deu erro"
  end

  def index
    @register = User.new
  end

  def create
    @register = User.new(register_params)

    if @register.save
      render :home
    else
      @error = @register.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  private

  def register_params
    params.require(:user).permit(:email, :name, :password)
  end
end
