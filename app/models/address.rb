class Address < ApplicationRecord
  belongs_to :user
  belongs_to :order, optional: true

  validates_presence_of :land_mark, :street, :city, :state, :zip

end
