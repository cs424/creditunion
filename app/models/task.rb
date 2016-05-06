class Task < ActiveRecord::Base
  has_many :marks, dependent: :destroy
  has_many :students, through: :marks
  belongs_to :course
  belongs_to :task

  def to_s
    "#{name} #{number}"
  end

  def short
    "#{name[0,4]} #{number}"
  end
end
