class AddJsonToFields < ActiveRecord::Migration[5.1]
  def change
    add_column :fields, :json, :string
  end
end
