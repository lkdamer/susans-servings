class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.boolean :confirmed
      t.integer :susan_rating

      t.timestamps
    end
  end
end
