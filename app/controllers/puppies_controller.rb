class PuppiesController < ApplicationController

  def show
    @litter = Litter.find(params[:litter_id])
    @dog = Dog.find(@litter.dog_id)
    @puppy = Puppy.find(params[:id])
  end

  def new
    @litter = Litter.find(params[:litter_id])
    @puppy = Puppy.new
  end

  def create
    @litter = Litter.find(params[:litter_id])
    @dog = Dog.find(@litter.dog_id)
    @puppy = @litter.puppies.new(puppy_params)
    @puppy.user = current_user
   if @puppy.save
     redirect_to litter_path(@litter.id)
   else
     render :new
   end
  end

  def edit
    @litter = Litter.find(params[:litter_id])
    @dog = Dog.find(@litter.dog_id)
    @puppy = Puppy.find(params[:id])
  end

  def update
    @litter = Litter.find(params[:litter_id])
    @dog = Dog.find(@litter.dog_id)
    @puppy= Puppy.find(params[:id])
    if @puppy.update(puppy_params)
      redirect_to litter_puppy_path(@litter.id, @puppy.id)
    else
      render :edit
    end
  end

  def destroy
    @puppy = Puppy.find(params[:id])
    @litter = Litter.find(@puppy.litter_id)
    @dog = Dog.find(@litter.dog_id)

    @puppy.destroy
    redirect_to litter_path(@litter.id)
  end



  private
    def puppy_params
      params.require(:puppy).permit(:name, :sex, :date_of_birth, :weight)
    end
end
