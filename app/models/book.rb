class Book < ApplicationRecord
    has_one :specification

    validates :title, presence: true
    validates :price, presence: true
end
