class Course < ActiveRecord::Base
  has_many :tasks

  def to_s
    code
  end
end
