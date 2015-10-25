class Mark < ActiveRecord::Base
  belongs_to :student
  belongs_to :task

  delegate :points, to: :task

  def percent
    100 * score/points
  end
end
