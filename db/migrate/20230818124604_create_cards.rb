class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :product_name
      t.integer :price

      t.timestamps
    end
  end
end
