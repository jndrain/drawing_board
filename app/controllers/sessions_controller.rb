class SessionsController < ApplicationController
    def index
      # reset_session
    render "index"
  end
  def register
  	@artist = Artist.create(user_params)
    if @artist.valid?
      session[:artist_id] = @artist.id
      redirect_to "/artist/#{@artist.id}"
    else
    	flash[:errors] = @artist.errors.full_messages
      redirect_to "/"
    end
  end
  def users
    render "login"
  end
  def login
    @artist = Artist.where(email: params[:email]).first
    if @artist && @artist.authenticate(params[:password])
      session[:artist_id] = @artist.id
      redirect_to "/artist/#{@artist.id}"
    else
    	flash[:errors] = ["Cannot find user password combination"]
      	redirect_to "/enter"
    end
  end

  def logout
    reset_session
    redirect_to "/enter"
  end
  private
  def user_params
    params.permit(:avatar, :fname, :lname, :uname, :email, :password, :password_confirmation, :city, :state, :bio)
  end
end
