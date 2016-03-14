class AddMaterialIdToDespatches < ActiveRecord::Migration
  def change
    add_column :despatches, :material_id, :integer
  end
end
