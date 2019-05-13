class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.date :purchase_date
      t.float :purchase_price
      t.string :store_purchased_from      

      t.timestamps null: false
    end
  end
end
