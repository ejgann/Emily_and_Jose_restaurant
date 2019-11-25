class Customer < ApplicationRecord

    has_many :orders
    has_many :foods, through: :orders
    accepts_nested_attributes_for :foods

end
