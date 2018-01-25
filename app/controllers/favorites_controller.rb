class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(blog_id: params[:blog_id])
    @favorites = favorite
    redirect_to blogs_url, notice: "#お気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(blog_id: params[:blog_id]).destroy
    redirect_to blogs_url, notice: "#お気に入り解除しました"
  end
end
