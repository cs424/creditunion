class Credit < ActiveRecord::Base
  belongs_to :course
  has_many :tasks
    has_many :marks, through: :tasks
  
  def to_s
    name
  end

  # number of assignments, length of exam paper
  def length
    tasks.count
  end
end
