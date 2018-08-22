def destroy
  @post = Favorite.find_by(user_id: params[:user_id])
  @post.destroy
  redirect_to("/")
end
