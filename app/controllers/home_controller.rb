class HomeController < ApplicationController
  def index
     @pictures = Picture.all
     @Lists = List.all 
   end
end
