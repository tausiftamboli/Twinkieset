class Api::SubalbumsController < ApplicationController

  def create
    @subalbum = Subalbum.new(subalbum_params)

    if @subalbum.save
      render json: @subalbum
    else
      render json: @subalbum.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @subalbum = Subalbum.find(params[:id])

    if @subalbum.update(subalbum_params)
      render json: @subalbum
    else
      render json: @subalbum.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @subalbum = Subalbum.find(params[:id])
    @subalbum.destroy
    render json: {}
  end

  private
    def subalbum_params
      params.require(:photo).permit(:image_url, :order, :subalbum_id)
    end
end