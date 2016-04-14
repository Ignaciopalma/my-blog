class AssetsController < ApplicationController

	def new
		@assets = Asset.new
	end
end
