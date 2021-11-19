class LinkGroupsController < ApplicationController
  
  def create
    @link_group = LinkGroup.new(link_group_params)
    if @link_group.save
      flash[:notice] = "投稿しました"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "失敗しました"
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @my_link = LinkGroup.find(params[:id])
    @my_link.destroy
    flash[:alert] = "削除しました"
    redirect_back(fallback_location: root_path)
  end


  private
  def link_group_params
    params.require(:link_group).permit(:url, :url_title, :my_link_id)
  end
end
