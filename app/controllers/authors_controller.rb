class AuthorsController < ApplicationController

  def index
    @authors = Author.all
    render :index
  end
end
