class RemoveColumnFromProductions < ActiveRecord::Migration
  def change
    remove_column :productions, :quntity, :decimal
    add_column :productions, :quantity, :decimal
  end
end
