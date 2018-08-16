class ListsController < ApplicationController

  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @list = List.find_by_id(params[:id])
  end

  def create
    @list = List.create(list_params)

    redirect_to list_path(@list)
  end

  private

def list_params #Strong Params
  params.require(:list).permit(:name)
end

end
