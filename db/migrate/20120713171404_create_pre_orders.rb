class CreatePreOrders < ActiveRecord::Migration
  def change
    create_table :pre_orders do |t|
      t.string :number
      t.integer :item_id
      t.integer :user_id

      t.timestamps
    end
  end
end
