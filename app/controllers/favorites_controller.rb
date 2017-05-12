class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end
  def show
   @favortie = Favorite.find(params[:id])
  end
  def destroy
      Favorite.find(params[:id]).destroy
      flash[:success] = "Favorite deleted"
      redirect_to categories_path, notice: "Favorite Deleted"
    end
end
