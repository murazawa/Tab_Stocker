class LinkGroupsController < ApplicationController
  
  def create
    @link_group = LinkGroup.new(link_group_params)
    if @link_group.save!
      redirect_back(fallback_location: root_path)
    else
      root_path
    end
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
end
