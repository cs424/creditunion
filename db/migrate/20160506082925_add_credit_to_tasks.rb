class AddCreditToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :credit, index: true
  end
end
