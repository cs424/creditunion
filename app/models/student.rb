class Student < ActiveRecord::Base
  has_many :marks, dependent: :destroy
  has_many :tasks, through: :marks

  validate :number, :first, :last, :username, presence: true
  validate :number, :username, uniqueness: true

  default_scope { order(:last, :first) }

  def to_s
    "#{number}: #{last_first}"
  end

  def last_first
    "#{last}, #{first}"
  end

  def first_last
    "#{first} #{last}"
  end

  def total_marks
    marks.map(&:score).sum
  end

  def total_max
    tasks.map(&:points).sum
  end

  def total_percent
    max = total_max
    return 0 if max == 0
    100 * total_marks/max
  end

  def level
    case total_percent
    when 0 then 'fail'
    when 100 then 'gold'
    when (0...35) then 'poor'
    when (75...100) then 'star'
    else 'norm'
    end
  end
end
