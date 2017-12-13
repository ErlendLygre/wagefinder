class AddCityToWages < ActiveRecord::Migration[5.1]
  def change
    add_column :wages, :city, :string
  end
end
