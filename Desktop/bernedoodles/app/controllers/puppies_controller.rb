class PuppiesController < ApplicationController

  def show
    @dog = Dog.find(params[:dog_id])
    @litter = Litter.find(params[:litter_id])
    @puppy = Puppy.find(params[:id])
  end

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

  def edit
    @dog = Dog.find(params[:dog_id])
    @litter = Litter.find(params[:litter_id])
    @puppy = Puppy.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:dog_id])
    @litter = Litter.find(params[:litter_id])
    @puppy= Puppy.find(params[:id])
    if @puppy.update(puppy_params)
      redirect_to dog_litter_puppy_path(@dog.id, @litter.id, @puppy.id)
    else
      render :edit
    end
  end

  def destroy
    @puppy = Puppy.find(params[:id])
    @litter = Litter.find(@puppy.litter_id)
    @dog = Dog.find(@litter.dog_id)

    @puppy.destroy
    redirect_to dog_litter_path(@dog.id, @litter.id)
  end



  private
    def puppy_params
      params.require(:puppy).permit(:name, :sex, :date_of_birth, :weight)
    end
end
