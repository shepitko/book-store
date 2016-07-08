class HomeController < ApplicationController
  def index
    @books = Book.bestsellers
  end
end
