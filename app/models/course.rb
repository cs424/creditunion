class Course < ActiveRecord::Base
  has_many :credits
  has_many :tasks, through: :credits
  
  def to_s
    code
  end
end
