class FavoriteController < ApplicationController
    before_action :authenticate_user!
  
    def index
      @favorites = Favorite.where(user_id: current_user.id)
    end

    def index
    end

    def favorite
      @destroy = Favorite.find_by(id: params[:id])
      @destroy.destroy
      @destroy.save!
      redirect_to("/")
    end

  end
     