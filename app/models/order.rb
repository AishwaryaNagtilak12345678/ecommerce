class Order < ApplicationRecord
  belongs_to :user

    #attr_accessor :products_attributes, :order_products_attributes
    has_many :order_products, dependent: :destroy
    has_many :products, through: :order_products
      #reject_if: lambda {|attributes| attributes["quantity"].black?}
    accepts_nested_attributes_for :order_products
    accepts_nested_attributes_for :products
    #has_many :addresses

end
