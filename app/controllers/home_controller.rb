class HomeController < ApplicationController
  def index
    @distribution = Bookmark.joins(:kind).group("kinds.name").count
  end
end
