class Student < ActiveRecord::Base
  validate :number, :first, :last, :username, presence: true
  validate :number, :username, uniqueness: true

  default_scope { order(:last, :first) }

  def to_s
    "#{number}: #{last}, #{first}"
  end
end
