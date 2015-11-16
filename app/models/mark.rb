class Mark < ActiveRecord::Base
  belongs_to :student
  belongs_to :task

  delegate :points, to: :task

  def to_s
    score
  end

  def percent
    100 * score/points
  end
end
