class ListsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end
  
  private
  def list_params
    params.permit(:title, :body)    # .require(:list)これとルーティングエラーが気に入らない
  end

end
