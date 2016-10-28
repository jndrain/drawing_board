class PicturesController < ApplicationController
	def create
		Picture.create(title: params[:title], image: params[:image], artist_id: session[:artist_id])
		redirect_to :back
	end

end
