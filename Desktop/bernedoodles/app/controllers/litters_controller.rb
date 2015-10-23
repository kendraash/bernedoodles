class LittersController < ApplicationController

  before_filter :authenticate_user!, except: [ :index, :show ]

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
