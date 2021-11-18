class TabCollectionsController < ApplicationController
  def index
    @all_links = MyLink.where(status: 0).page(params[:page]).per(8)
  end
end

