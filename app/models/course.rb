class Course < ActiveRecord::Base
  has_many :tasks
  has_many :credits

  def to_s
    code
  end
end
