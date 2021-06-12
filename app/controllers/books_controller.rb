class BooksController < ApplicationController
  def new
    @books = Book.new
  end
  def create
    book = Book.new(book_params)
    if book.save
      redirect_to books_path, notice: "Book was successfully created."
      # 仮設定　一覧ページへリダイレクト
    else
      render action: :index
    end
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
