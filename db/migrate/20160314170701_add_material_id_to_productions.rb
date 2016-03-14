class AddMaterialIdToProductions < ActiveRecord::Migration
  def change
    add_column :productions, :material_id, :integer
  end
end
