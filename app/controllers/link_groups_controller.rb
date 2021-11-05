class LinkGroupsController < ApplicationController

  def show
    @link = LinkGroup.new
    @links = LinkGroup.where(params[:link_group_id])
  end
  
  def create
    @link = LinkGroup.new(link_group_params)
    @link = params[:my_link_id]
    # binding.pry
    if @link.save!
      redirect_back(fallback_location: root_path)
    else
      root_path
    end
  end


  private
  def link_group_params
    params.require(:link_group).permit(:url, :url_title, :id)
  end
end
