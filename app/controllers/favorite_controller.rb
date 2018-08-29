class FavoriteController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = Favorite.where(user_id: current_user.id)
  end

  def edit
    @favorites = Favorite.where(user_id: current_user.id)
  end 

  def delete
    id = params['id']
    @favoriteuser = Favorite.find(id)
    p @favoriteuser
  
    @favoriteuser.destroy

    p "#{@favoriteuser} ,(#{@id})Delete."

    redirect_to action: :edit

  end

end