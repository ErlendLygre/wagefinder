class RemoveFileFromFields < ActiveRecord::Migration[5.1]
  def change
    remove_column :fields, :file
  end
end
