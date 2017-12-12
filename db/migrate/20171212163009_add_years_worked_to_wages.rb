class AddYearsWorkedToWages < ActiveRecord::Migration[5.1]
  def change
    add_column :wages, :years_worked, :integer
    add_column :wages, :years_edu, :integer
  end
end
