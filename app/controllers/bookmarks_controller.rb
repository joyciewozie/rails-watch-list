class BookmarksController < ApplicationController
  # locate the list
  before_action :set_list, only: %i[new create]

  def new
    # need @list in bookmarks form
    @bookmark.list = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
  end


  private

  def lists_article
    params.require(:bookmark).permit(:comment)
  end

  def set_list
    @list = List.find(params[:list_id])
  end
end
