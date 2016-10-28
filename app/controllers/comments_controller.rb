class CommentsController < ApplicationController
def create
	comment = Comment.create(artist_id: session[:artist_id], project_id: params[:project_id], content: params[:comment])
	redirect_to :back
end
def collaborate
	collab = Collab.create(artist_id: session[:artist_id], project_id: params[:project_id])
	redirect_to :back
end
end
