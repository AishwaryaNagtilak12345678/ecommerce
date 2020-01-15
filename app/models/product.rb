class Product < ApplicationRecord
  belongs_to :user

    attr_accessor :orders_attributes, :order_products_attributes
    has_many :order_products
    has_many :orders, through: :order_products
  # accepts_nested_attributes_for :orders
  # has_one_attached :image

  

  # def self.search(search)
  #    if search
  #      where(["name LIKE?","%#{search}%"])
  #    end
  #  end
end
