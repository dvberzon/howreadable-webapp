class HomeController < ApplicationController
  def index
    @snippet = Snippet.new('if_statement', 'js')
  end
end
