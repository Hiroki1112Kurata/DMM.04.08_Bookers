class BooksController < ApplicationController
  def new
    @books = Book.new
  end
  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
    # 仮設定　一覧ページへリダイレクト
  end
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
