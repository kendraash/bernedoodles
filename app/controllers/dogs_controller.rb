class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(dog_params)
    @dog.user = current_user
   if @dog.save
     redirect_to dog_path(@dog)
   else
     render :new
   end
  end

  def show
    @dog = Dog.find(params[:id])
    @litters = @dog.litters

  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    if @dog.update(dog_params)
      redirect_to dog_path(@dog.id)
    else
      render :edit
    end
  end

  private
    def dog_params
      params.require(:dog).permit(:name, :date_of_birth, :sex)
    end
end
