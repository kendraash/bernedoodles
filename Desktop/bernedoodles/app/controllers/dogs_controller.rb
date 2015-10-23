class DogsController < ApplicationController

  before_filter :authenticate_user!, except: [ :index, :show ]

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(dog_params)
    @dog.user = current_user
   if @dog.save
     redirect_to user_path(@dog.user_id)
   else
     render :new
   end
  end

  def show
    @dog = Dog.find(params[:id])
    @litters = @dog.litters
  end

  private
    def dog_params
      params.require(:dog).permit(:name, :date_of_birth, :sex)
    end
end
