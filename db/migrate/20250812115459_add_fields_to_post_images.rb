class AddFieldsToPostImages < ActiveRecord::Migration[6.1]
  def change
    add_column :post_images, :shop_name, :string
    add_column :post_images, :caption, :text
    add_reference :post_images, :user, null: false, foreign_key: true
  end
end
