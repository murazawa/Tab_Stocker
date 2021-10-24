class MyLinksController < ApplicationController
  before_action :authenticate_user!
  def index
    @links = MyLink.all
  end

  def show
  end
  
  def create
    kllk
  end

end
