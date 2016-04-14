class RoadsController < ApplicationController
  def index
    @roads = Road.all
  end

  def new
    @road = Road.new
  end

  def create
    @road = Road.find(params[:post_id])
    @post = @road.roads.create(road_params)

    if @road.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def road_params
    params.require(:road).permit(:principio, :final, :post_id)
  end
end
