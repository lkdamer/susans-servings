class CreatePortions < ActiveRecord::Migration
  def change
    create_table :portions do |t|
      t.integer :meal_id
      t.integer :serving_id
      t.integer :grams

      t.timestamps
    end
  end
end
