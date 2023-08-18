class CreateShoppingCartsCardsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :shopping_carts, :cards do |t|
      t.index :shopping_cart_id
      t.index :card_id
    end
  end
end
