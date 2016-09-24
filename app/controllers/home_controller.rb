class HomeController < ApplicationController
  def index
     @pictures = Picture.all.shuffle
     temp = @pictures.length
     array_size = temp -  20
     @pictures = @pictures.drop(array_size)
     @Lists = List.all
   end
end
