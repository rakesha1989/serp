class CreatePayBills < ActiveRecord::Migration
  def change
    create_table :pay_bills do |t|
      t.integer :supplier_id
      t.string :payment_method
      t.date :payment_date
      t.string :bill_no
      t.integer :reference_no
      t.text :description
      t.string :amount
      t.float :tax

      t.timestamps null: false
    end
  end
end
