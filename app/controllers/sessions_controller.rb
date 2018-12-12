class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to users_sing_up_path

  end

  def new

    @user = User.new

  end

  def create

    @user = User.find_by(email: params[:user][:email])
    if @user.nil?
      redirect_to users_sing_up_path, alert: 'usuario no existe'
      return
    end
    if @user.password == params[:user][:password]
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to users_sing_up_path, alert: 'Pasword errada'
  end

end

end
