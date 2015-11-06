
class StepsController < ApplicationController

	def new
		@project = Project.all.last
	end

	def create

		project_id = params['project-id'].to_i
		params.each do |key, value|
			if key.to_i > 0
				Step.create({description: value, rank: key.to_i, project_id: project_id})
			end
		end
		redirect_to project_path(Project.all.last.id)
	end

end