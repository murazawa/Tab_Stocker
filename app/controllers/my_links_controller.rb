class MyLinksController < ApplicationController
  before_action :authenticate_user!
  def index
    @links = MyLink.all
    @link = MyLink.new
  end

  def show
  end

  def create
    @link = MyLink.new(my_link_params)
    if @link.save!
      redirect_to my_links_path
    else
      @links = MyLink.all
      render :index

    end
  end

  private
  def my_link_params
    params.require(:my_link).permit(:title, :description, :url, :url_title)
  end

end
