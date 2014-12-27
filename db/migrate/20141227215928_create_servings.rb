class CreateServings < ActiveRecord::Migration
  def change
    create_table :servings do |t|
      t.string :name
      t.integer :grams
      t.integer :calories
      t.boolean :susan_approved
      t.integer :susan_limit

      t.timestamps
    end
  end
end
