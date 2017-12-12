class RemoveYearsWorkedFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :years_worked
    remove_column :users, :years_edu
  end
end
