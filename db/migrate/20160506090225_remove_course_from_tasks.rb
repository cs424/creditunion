class RemoveCourseFromTasks < ActiveRecord::Migration
  def change
    remove_reference :tasks, :course, index: true
  end
end
