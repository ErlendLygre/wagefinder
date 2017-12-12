class CreateFields < ActiveRecord::Migration[5.1]
  def change
    create_table :fields do |t|
      t.string :name
      t.string :file

      t.timestamps
    end
  end
end
