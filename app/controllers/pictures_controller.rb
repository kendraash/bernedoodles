class PicturesController < ApplicationController

  def new
    @picture = Picture.new
    if params[:dog]
      @imageable_id = (params[:dog])
      @imageable_type = 'Dog'
    elsif params[:puppy]
      @imageable_id = (params[:puppy])
      @imageable_type = 'Puppy'
    end

  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to :back
    else
      render :new
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to :back
  end

private
  def picture_params
    params.require(:picture).permit(:name, :imageable_id, :imageable_type)
  end

end
