class PagesController < ApplicationController

	def home
		if user_signed_in?
	  	@micropost = current_user.microposts.build
	  	@feed_items = current_user.feed.paginate(page: params[:page]).order(created_at: :desc)
		end
	end

	def help
		@title = "Help"
	end

	def about
		@title = "About"
	end

	def contact
		@title = "Contact"
	end
end
