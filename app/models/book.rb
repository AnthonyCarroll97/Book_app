class Book < ApplicationRecord
    has_one :specification

    validates :title, presence: true
    validates :price, presence: true

    has_many :order_items
    has_many :users, through: :order_items
end
