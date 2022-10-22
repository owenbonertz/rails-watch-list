class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @listito = Lists.find(params[:id])

  end
end
