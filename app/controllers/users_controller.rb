class UsersController < ApplicationController
	before_action :authenticate_user!

	def create
		@user = User.new(params[:id])
		if @user.save
			redirect_to @user.profile_path
		else
			render "new"
		end
	end

	def new
		@user = User.new
	end


end
