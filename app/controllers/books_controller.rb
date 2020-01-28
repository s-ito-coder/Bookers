class BooksController < ApplicationController
  def index
  	@books = Book.all
  	@book = Book.new
  end

  def show
  end

  def edit
  end

  def create
  	book = Book.new(book_params)
    book.save
    redirect_to '/books'
    # ここにif文で投稿成功/失敗のリダイレクト先やビューに渡すメッセージを記載する
  end

  private
  def book_params
  	# params = Railsから送られてきた値を受け取るためのメソッド
    params.require(:book).permit(:title, :body)
  end
end