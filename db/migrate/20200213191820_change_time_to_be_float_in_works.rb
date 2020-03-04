class ChangeTimeToBeFloatInWorks < ActiveRecord::Migration[6.0]
  def change
    change_column :works, :duration, :float
  end
end
