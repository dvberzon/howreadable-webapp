class HomeController < ApplicationController
  def index
    @snippet = Snippet.new('ternary', 'js')
  end

  def temproot
  end

  def thankyou
  end
end
