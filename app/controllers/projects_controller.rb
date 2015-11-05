class ProjectsController < ApplicationController

	def new
		@project = Project.new
	end

	def index
		@projects = Project.all
	end

	def create
		@project = Project.new(project_params, user: current_user)

		if @project.save
			redirect_to project_path(@project.id)
		else
			redirect_to new_project_path
		end
	end

	def show
		@project = Project.find(params[:id])

	end


	private

		def project_params
      params.require(:project).permit(:name, :description, :est_time, :cost)
    end

end
