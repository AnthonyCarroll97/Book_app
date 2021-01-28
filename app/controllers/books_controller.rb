class BooksController < ApplicationController
    before_action :load_books, only: [:index]
    before_action :check_params, only: [:create]
    def index
    end

    def show
    end

    def new
        @book = Book.new
    end 

    def create
         Book.create(@params)
         redirect_to books_path
    end

    private
    def load_books
        @books = Book.all
    end
    def check_params 
        @params = params.require(:book).permit(:title, :price)
    end
end
