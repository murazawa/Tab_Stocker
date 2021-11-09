class MyLinksController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @my_link = MyLink.new
    # @my_links = MyLink.where(id: current_user.id)
    @my_links = MyLink.all
  end
  
  def show
    @my_link = MyLink.find(params[:id])
    @link_group = LinkGroup.new
  end

  def edit
    @link = MyLink.find(params[:id])
  end

  def create
    @my_link = MyLink.new(my_link_params)
    if @my_link.save
      redirect_to my_links_path
    else
      render :index
    end
  end

  def update
    @my_link = MyLink.find(params[:id])
    @my_link.update(my_link_params)
    redirect_to my_links_path
  end

  def destroy
    @links = MyLink.find(params[:id])
    @links.destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def my_link_params
    
    # -----------------
    p
    # -----------------
    # binding.pry
    params.require(:my_link).permit(:title, :description, :status_id)
  end

end
