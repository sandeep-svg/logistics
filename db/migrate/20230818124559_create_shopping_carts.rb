class CreateShoppingCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_carts do |t|
      t.integer :customer_id

      t.timestamps
    end
  end
end
