class UsersController < ApplicationController

	def create
	  User.create(username: params[:username], password: params[:password])
	end

	def show
		user = User.find_by_username(params[:username])
		if user && user.password == params[:password]
			user.to_json
		else
			false
		end
	end
end
