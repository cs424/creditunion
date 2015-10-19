class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.references :student, index: true
      t.references :task, index: true
      t.integer :score

      t.timestamps
    end
  end
end
