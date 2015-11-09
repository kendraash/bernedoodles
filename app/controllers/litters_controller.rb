class LittersController < ApplicationController

  def show
    binding.pry
    @dog = Dog.find(params[:dog].to_i)
    @litter = Litter.find(params[:id])
    @puppies = @litter.puppies
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
