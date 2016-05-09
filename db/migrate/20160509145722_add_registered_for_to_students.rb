class AddRegisteredForToStudents < ActiveRecord::Migration
  def change
    add_column :students, :registered_for, :string
  end
end
