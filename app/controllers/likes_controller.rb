class LikesController < ApplicationController
	
	def create
		@like_micropost = Micropost.find(params[:micropost_id])
		@like_micropost.like(current_user)
		respond_to do |format|
			format.turbo_stream
		end
	end

	def destroy
		@like_micropost = Micropost.find(params[:micropost_id])
		@like_micropost.unlike(current_user)
		respond_to do |format|
			format.turbo_stream
		end
	end
end
