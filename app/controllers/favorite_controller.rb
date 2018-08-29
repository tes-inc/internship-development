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

    @favorites.destroy

    p "#{@favorites}"

    redirect_to action: :index

  end

end