class MyLinksController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @my_link = MyLink.new
    @my_links = current_user.my_links
  end
  
  def show
    @my_link = MyLink.find(params[:id])
    @link_group = LinkGroup.new
  end

  def edit
    @my_link = MyLink.find(params[:id])
  end
  
  def favorite_links

  end

  def create
    @my_link = MyLink.new(my_link_params)
    if @my_link.save
      redirect_to my_links_path
    else
      @my_links = current_user.my_links
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
    @my_links.destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def my_link_params
    params.require(:my_link).permit(:title, :description, :status, :my_link_id).merge(user_id: current_user.id)
  end
end
