class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @newList = List.new
  end

  def create
    @newList = List.new(list_params)
  end

  def show
    @listito = List.find(params[:id])
    @films = @listito.movies
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
