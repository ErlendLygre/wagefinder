class AddAvgWageToFields < ActiveRecord::Migration[5.1]
  def change
    add_column :fields, :avg_wage, :integer
  end
end
