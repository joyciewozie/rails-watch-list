class BookmarksController < ApplicationController
  def new
    # need @list in bookmarks form
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.create(bookmark_params)
  end

  private

  def lists_article
    params.require(:bookmark).permit(:comment)
  end
end
