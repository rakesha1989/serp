class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.decimal :quntity
      t.string :unit
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
