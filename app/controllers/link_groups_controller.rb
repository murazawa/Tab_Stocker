class LinkGroupsController < ApplicationController
  def show
    @link = LinkGroup.new
    @links = LinkGroup.all
  end
  def create
    @link = LinkGroup.new(link_group_params)
    @link.user_id = current_user.id
    @link.my_link_id = params[:my_link_id]
    @link.save
      redirect_back(fallback_location: root_path)
  end


  private
  def link_group_params
    params.require(:link_group).permit(:url, :url_title, :id)
  end
end
