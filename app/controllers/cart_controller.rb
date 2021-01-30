class CartController < ApplicationController
    before_action :permit_params, only: [:create]
    before_action :load_cart_items, only: [:show]
    def create
        OrderItem.create(@cart_params)
        redirect_to books_path 
    end 

    def show

    end

    private 
    def permit_params
        @cart_params = params.permit(:user_id, :book_id)
    end

    def load_cart_items
        @cart_items = current_user.books
    end
end
