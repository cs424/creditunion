class AddCourseToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :course, index: true
  end
end
