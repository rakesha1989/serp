class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.text :address
      t.string :phone_number
      t.text :info
      t.string :p_a_n_number
      t.string :t_i_n_number
      t.string :c_s_t_reg
      t.string :key_contact_person

      t.timestamps null: false
    end
  end
end
