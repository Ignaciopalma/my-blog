class RatesController < ApplicationController
  def index
  end

  def new
    @rate = Rate.new

  end

  def create
    @rate = Rate.find(params[:post_id])
    if @road.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def rate_params
    params.require(:rate).permit(:condiciones, :agua, :seguridad, :camping, :post_id)
  end
end
