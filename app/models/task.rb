class Task < ActiveRecord::Base
  has_many :marks, dependent: :destroy
  has_many :students, through: :marks

  def to_s
    "#{name} #{number}"
  end
end
