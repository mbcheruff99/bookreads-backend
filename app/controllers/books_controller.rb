class BooksController < ApplicationController

  def index
    @books = Book.all
    render :index
  end

  def show
    @book = Book.find(params[:id])
    render :show
  end

  def create
    @book = Book.new(
      title: params[:title],
      author_id: params[:author_id]
    )

    if @book.save
      render :show
    else
      render json: { errors: @book.errors }, status: :unprocessable_entity
    end
  end

end
