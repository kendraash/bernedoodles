class LittersController < ApplicationController

  def show
    @litter = Litter.find(params[:id])
    @dog = Dog.find(@litter.dog_id)
    @puppies = @litter.puppies
  end

  def index
    @litters = Litter.all
  end

  def new
    @dog = Dog.find(params[:dog_id])
    @litter = Litter.new
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @litter = @dog.litters.new(litter_params)
    @litter.user = current_user
   if @litter.save
     redirect_to dog_path(@litter.dog_id)
   else
     render :new
   end
  end



  private
    def litter_params
      params.require(:litter).permit(:due_date)
    end
end
