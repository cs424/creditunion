class Credit < ActiveRecord::Base
  belongs_to :course
  has_many :tasks

  def to_s
    name
  end
end
