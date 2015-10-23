class PuppiesController < ApplicationController

  before_filter :authenticate_user!, except: [ :index, :show ]
  # def show
  #   @litter = Litter.find(params[:litter_id])
  #   @puppy = Puppy.find(params[:id])
  # end

  def new
    @dog = Dog.find(params[:dog_id])
    @litter = Litter.find(params[:litter_id])
    @puppy = Puppy.new
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @litter = Litter.find(params[:litter_id])
    @puppy = @litter.puppies.new(puppy_params)
    @puppy.user = current_user
   if @puppy.save
     redirect_to dog_litter_path(@dog.id, @litter.id)
   else
     render :new
   end
  end



  private
    def puppy_params
      params.require(:puppy).permit(:name, :sex, :date_of_birth, :weight)
    end
end
