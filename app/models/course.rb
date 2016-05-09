class Course < ActiveRecord::Base
  has_many :credits
     has_many :tasks, through: :credits
  
  has_many :registrations
    has_many :students, through: :registrations

  def to_s
    code
  end
end
