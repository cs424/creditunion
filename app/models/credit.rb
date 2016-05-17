class Credit < ActiveRecord::Base
  belongs_to :course
  belongs_to :credit  # fallback!
  
  has_many :tasks
    has_many :marks, through: :tasks
      has_many :students, -> { distinct }, through: :marks
    
  def to_s
    name
  end

  def name_weight
    "#{name} (#{weight}%)"
  end

  # number of assignments, length of exam paper
  def length
    tasks.count
  end
end
