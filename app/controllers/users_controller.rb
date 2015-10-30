class UsersController < ApplicationController

  def show
     @user = User.find(params[:id])
     @dogs = @user.dogs
    
   end

   def index
   end
end
