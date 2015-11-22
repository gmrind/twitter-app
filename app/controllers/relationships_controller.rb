class RelationshipsController < ApplicationController
	before_filter :authenticate_user!

	def create
		user = User.find(params[:followed_id])
		current_user.follow(user)
		redirect_to user
	end

	def destroy
		relationship = Relationship.find(params[:id])
		relationship.destroy
		redirect_to :back
	end
end
