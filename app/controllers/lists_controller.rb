class ListsController < ApplicationController
  def index
    @lists = List.all
    @movies = Movie.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    @list.save
    # No need for app/views/lists/create.html.erb
    if @list.id
      redirect_to list_path(@list)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def new
    @list = List.new
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
