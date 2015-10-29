class PicturesController < ApplicationController

  def new
    @picture = Picture.new
    @imageable_id = (params[:dog])
    @imageable_type = 'Dog'
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to pictures_path
    else
      render :new
    end
  end

private
  def picture_params
    params.require(:picture).permit(:name, :imageable_id, :imageable_type)
  end
  # def id_params
  #   params.require(:picture).permit(:imageable)
  # end
end
