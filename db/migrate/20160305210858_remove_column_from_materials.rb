class RemoveColumnFromMaterials < ActiveRecord::Migration
  def change
    remove_column :materials, :product_id, :integer
    
  end
end
