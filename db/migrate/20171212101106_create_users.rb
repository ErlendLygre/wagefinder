class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :years_worked
      t.integer :years_edu
      t.references :registration, foreign_key: true

      t.timestamps
    end
  end
end
