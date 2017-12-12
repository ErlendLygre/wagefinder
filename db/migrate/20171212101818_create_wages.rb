class CreateWages < ActiveRecord::Migration[5.1]
  def change
    create_table :wages do |t|
      t.integer :wage
      t.references :user, foreign_key: true
      t.references :field, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
