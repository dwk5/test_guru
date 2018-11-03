class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to cookies[:return_to]
    else
      flash.now[:alert] = 'Ошибка входа! Проверьте свой email или пароль!'
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end

end
