class PagesController < ApplicationController
	def index
		@post = Post.new
		@all_posts = Post.all
	end

	def equipo
	end	

	def felicidad
		@comments = Comment.all
	end

	def pumalin
		@comments = Comment.all
	end
end


