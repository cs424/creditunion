class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.string :name
      t.references :course, index: true
      t.integer :weight

      t.timestamps
    end
  end
end
