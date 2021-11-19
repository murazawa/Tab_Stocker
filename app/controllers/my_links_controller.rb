class MyLinksController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @my_link = MyLink.new
    @my_links = current_user.my_links.page(params[:page]).per(8)
    @q = current_user.my_links.ransack(params[:q])
    @searches = @q.result.page(params[:page]).per(8)
  end
  
  def show
    @my_link = MyLink.find(params[:id])
    @link_group = LinkGroup.new
  end

  def edit
    @my_link = MyLink.find(params[:id])
  end
  
  def favorite_list
    favorites = Favorite.where(user_id: current_user.id).pluck(:my_link_id)
    @favorite_list = MyLink.find(favorites)
  end

  def create
    @my_link = MyLink.new(my_link_params)
    if @my_link.save
      flash[:notice] = "投稿しました"
      redirect_to my_links_path
    else
      @my_links = current_user.my_links
      flash[:alert] = "失敗しました"
      render :index
    end
  end

  def update
    @my_link = MyLink.find(params[:id])
    @my_link.update(my_link_params)
    redirect_to my_links_path
  end

  def destroy
    @my_links = MyLink.find(params[:id])
    flash[:alert] = "削除しました"
    @my_links.destroy
    redirect_back(fallback_location: root_path)
  end
  
  def search
    @q = current_user.my_links.search(search_params)
    @searches = @q.result.page(params[:page]).per(8)
  end

  private
  def my_link_params
    params.require(:my_link).permit(:title, :description, :status, :my_link_id).merge(user_id: current_user.id)
  end
  
  def search_params
    params.require(:q).permit(:title_cont)
  end
end
