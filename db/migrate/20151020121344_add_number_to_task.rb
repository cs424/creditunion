class AddNumberToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :number, :integer
  end
end
