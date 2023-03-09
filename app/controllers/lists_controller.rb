class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(lists_params)
  end

  private

  def lists_article
    params.require(:list).permit(:name)
  end
end
