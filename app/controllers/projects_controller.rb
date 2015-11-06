class ProjectsController < ApplicationController

	def new
		@project = Project.new
		if Project.all.count > 0
			@last_project_id = Project.all.last.id
		end
	end

	def index
		@projects = Project.all
	end

	def create
		@project = Project.new(project_params)
		@project.user_id = current_user.id

		if @project.save
			redirect_to project_path(@project.id)
		else
			redirect_to new_project_path
		end
	end

	def show
		@project = Project.find(params[:id])
		if @project.steps
			@steps = @project.steps
		end
	end


	private

		def project_params
      params.require(:project).permit(:name, :description, :est_time, :cost, :project_pic)
    end

end
