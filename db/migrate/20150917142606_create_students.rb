class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :number
      t.string :first
      t.string :last
      t.string :status
      t.text :comment
      t.string :username

      t.timestamps
    end
  end
end
