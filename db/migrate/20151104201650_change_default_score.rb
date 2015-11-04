class ChangeDefaultScore < ActiveRecord::Migration
  def up
    change_column :marks, :score, :decimal, precision: 6, scale: 2, default: 0
  end

  def down
    change_column :marks, :score, :decimal, precision: 6, scale: 2, default: nil
  end
end
