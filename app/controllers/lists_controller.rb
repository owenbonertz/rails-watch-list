class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @newList = List.new
  end

  def create
    @list = List.new(list_params)
    if @product.save
      flash[:notice] = 'List added!'
      redirect_to lists_path
    else
      flash[:error] = 'Failed to edit list!'
      render :new
    end
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
