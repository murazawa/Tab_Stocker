class TabCollectionsController < ApplicationController
  def index
    @all_links = MyLink.where(status: 0).page(params[:page]).per(8)
    @q = MyLink.ransack(params[:q])
    @searches = @q.result.where(status: 0).page(params[:page]).per(8)
  end
  
  def search
    @q = MyLink.search(search_params)
    @searches = @q.result.where(status: 0).page(params[:page]).per(8)
  end
  
  def search_params
    params.require(:q).permit(:title_cont)
  end
end

