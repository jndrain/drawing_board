class ArtistsController < ApplicationController
	def show
		@artist = Artist.where(id: params[:id]).first
		@current = Project.where(artist_id: params[:id])
		@others = Project.where.not(artist_id: params[:id])
		@collab = Collab.where(artist_id: params[:id])
		render "show"
	end
	def profile
		@artist = Artist.where(id: params[:id]).first
	end
	def update
		@artist = Artist.where(id: params[:id]).first
	end
	def save
		@artist = Artist.where(id: params[:id]).first
		@artist.update(avatar: params[:avatar], fname: params[:fname], lname: params[:lname], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation], city: params[:city], state: params[:state], bio: params[:bio], uname: params[:uname])
		redirect_to "/artist/<%= @artist.id %>"
	end
	private
	def user_params
	  params.permit(:fname, :lname, :uname, :city, :state, :email, :avatar)
	end
end
