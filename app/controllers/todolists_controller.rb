class TodolistsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
    @list = Book.new
  end
  def create
    # ストロングパラメーターを使用
  	book = Book.new(Book_params)
    # DBへ保存する
    book.save
    # 投稿完了画面へリダイレクト
    redirect_to '/books'
    # ここにif文で投稿成功/失敗のリダイレクト先やビューに渡すメッセージを記載する
  end

  private
  def Book_params
  	# params = Railsから送られてきた値を受け取るためのメソッド
    params.require(:Book).permit(:title, :body)
  end
end