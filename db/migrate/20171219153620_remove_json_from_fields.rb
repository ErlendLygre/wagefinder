class RemoveJsonFromFields < ActiveRecord::Migration[5.1]
  def change
    remove_column :fields, :json
  end
end
