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

  def edit
    @litter = Litter.find(params[:id])
  end

  def update
    @litter = Litter.find(params[:id])
    if @litter.update(litter_params)
      redirect_to litter_path(@litter.id)
    else
      render :edit
    end
  end


  private
    def litter_params
      params.require(:litter).permit(:due_date, :sold)
    end
end
