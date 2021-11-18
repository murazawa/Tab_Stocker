class FavoritesController < ApplicationController
  
  def create
    @my_link = MyLink.find(params[:my_link_id])
    favorite = current_user.favorites.new(my_link_id: @my_link.id)
    favorite.save
  end
  
  def destroy
    @my_link = MyLink.find(params[:my_link_id])
    favorite = current_user.favorites.find_by(my_link_id: @my_link.id)
    favorite.destroy
  end
end
