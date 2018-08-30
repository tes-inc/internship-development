class FavoriteController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @favorites = Favorite.where(user_id: current_user.id)
  end

  def edit
    @favorites = Favorite.where(user_id: current_user.id)
  end 

  def delete
    @favorites = Favorite.find_by(params[:id])
    @id = params[:id]

    p "#{@favorites},(#{@id})"

    @favorites.destroy

    p "#{@favorites} ,(#{@id})Delete."

    redirect_to action: :edit

  end

end