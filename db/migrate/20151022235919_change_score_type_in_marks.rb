class ChangeScoreTypeInMarks < ActiveRecord::Migration
  def up
    change_column :marks, :score, :decimal, precision: 6, scale: 2
  end

  def down
    change_column :marks, :score, :integer
  end
end
