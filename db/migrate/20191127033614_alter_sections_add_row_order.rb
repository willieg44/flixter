class AlterSectionsAddRowOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :row_order, :integer
  end
end
