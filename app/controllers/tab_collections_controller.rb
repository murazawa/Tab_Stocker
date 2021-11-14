class TabCollectionsController < ApplicationController
  def index
    @all_links = MyLink.where(status: 0)
  end
end

