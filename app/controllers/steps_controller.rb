require 'pry'
class StepsController < ApplicationController

	def new

	end

	def create
		params.each do |key, value|
			if key.to_i > 0
				Step.create({description: value, rank: key.to_i})
			end
		end
		redirect_to user_path(current_user.id)
	end

end