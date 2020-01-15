class AddImageToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :image, :blob
  end
end
