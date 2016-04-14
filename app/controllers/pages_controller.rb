class PagesController < ApplicationController
	def index
		@post = Post.new
		@post.roads.build
		@all_posts = Post.all

	end

	def equipo
	end	

end


