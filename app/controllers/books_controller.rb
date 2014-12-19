class BooksController < ApplicationController
  def index
    render json: { books: Book.all }
  end

  def show
    render json: { book: Book.find(params[:id]) }
  end

  def create
    if book = Book.create(book_params)
      render json: { book: book }
    else
      render json: { errors: book.errors }, status: :unprocessable_entity
    end
  end

  protected
  def book_params
    params.require(:book).permit(:title, :author, :review, :rating, :amazon_id, :genre_id)
  end
end
