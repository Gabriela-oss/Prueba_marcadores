class HomeController < ApplicationController
  def index
    @distribution = Musicmark.joins(:kind).group("kinds.name").count
  end
end
