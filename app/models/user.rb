class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders, through: :order_products
  accepts_nested_attributes_for :orders

  def username
    return self.email.split('@')[0].capitalize
  end
end
