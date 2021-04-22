class HomeController < ApplicationController
  def index
    @musicmarks = Musicmark.joins(:kind).group('kinds.name').count
  end
end
