class SearchController < ApplicationController
  def index
    @presenter = NrelPresenter.new(params[:q])
  end
end
