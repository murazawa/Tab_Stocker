class LinkGroupsController < ApplicationController
  before_action :set_my_link
  def edit
    @link_group = LinkGroup.find(params[:id])
    @my_link
  end
  
  def create
    @link_group = LinkGroup.new(link_group_params)
    if @link_group.save!
      redirect_back(fallback_location: root_path)
    else
      root_path
    end
  end
  
  def update
    @link_group = LinkGroup.find(params[:id])
    @link_group.update(link_group_params)
    redirect_to my_link_path(@my_link)
  end
  
  def destroy
    @my_link = LinkGroup.find(params[:id])
    @my_link.destroy
    redirect_back(fallback_location: root_path)
  end


  private
  def link_group_params
    params.require(:link_group).permit(:url, :url_title, :my_link_id)
  end
  
  def set_my_link
    @my_link = MyLink.find(params[:id])
  end
end
