class TasksController < ApplicationController

	def index
		arr = []
		if (params[:apikey] == "pass")
			Task.where("user_id = ?", params[:user_id]).each do |task|
				arr << task.to_json
			end
		end
		return arr
	end

	def show
		if (params[:apikey] == "pass")
			Task.find(params[:task_id]).to_json
		end
	end

	def create
		if (params[:apikey] == "pass")
		  Task.create(content: params[:content], user_id: params[user_id])
		end
	end
	def update
		if (params[:apikey] == "pass")
			task = Task.find(params[:task_id])
			task.update_attributes(params[:task])
		end
	end
	def destroy
		if (params[:apikey] == "pass")
			task = Task.find(params[:task_id])
			task.destroy
		end
	end
end
