class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :purchase_date
      t.string :date
      t.string :estimated_replacement_date
      t.string :approximate_value

      t.timestamps null: false
    end
  end
end
