class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :p_a_n_number
      t.string :t_i_n_no
      t.float :vat_sales
      t.float :vat_purchase
      t.string :adress
      t.string :owner

      t.timestamps null: false
    end
  end
end
