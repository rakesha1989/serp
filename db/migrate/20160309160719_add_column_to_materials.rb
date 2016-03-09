class AddColumnToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :unit, :string
  end
end
