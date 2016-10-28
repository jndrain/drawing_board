class ProjectsController < ApplicationController
	def home
		@projects = Project.all
		render "home"
	end
	def show
		@artist = Artist.where(id: session[:artist_id]).first
		@project = Project.where(id: params[:id]).first
		@collab = Collab.where(project_id: @project)
		@comments = Comment.where(project_id: @project.id)
		render "show"
	end
	def create
		@project = Project.create(user_params)
		if @project.valid?
			redirect_to "/project/<%= @project.id %>"
		else
			flash[:errors] = "Try again!"
		end
	end
	def new
		render "generate"
	end
	private
	def user_params
    params.permit(:avatar, :session[:artist_id], :name, :description, :media)
  end
	
end
