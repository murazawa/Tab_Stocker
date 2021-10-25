class MyLinksController < ApplicationController
  before_action :authenticate_user!
  def index
    @links = MyLink.all
    @link = MyLink.new

  end

  def edit
    @link = MyLink.find(params[:id])
  end

  def create
    @link = MyLink.new(my_link_params)
    if @link.save
      redirect_to my_links_path
    else
      @links = MyLink.all
      render :index
    end
  end

  def update
    @link = MyLink.find(params[:id])
    @link.update(my_link_params)
    redirect_to my_links_path
  end

  def destroy
    @links = MyLink.find(params[:id])
    @links.destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def my_link_params
    params.require(:my_link).permit(:title, :description)
  end

end
