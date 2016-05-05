class ChangeYearTypeInCourses < ActiveRecord::Migration
  def up
    change_column :courses, :year, :integer
  end

  def down
    change_column :courses, :year, :string
  end
end
