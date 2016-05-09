class Student < ActiveRecord::Base
  has_many :marks, dependent: :destroy
    has_many :tasks, through: :marks
      has_many :credits, -> { distinct }, through: :tasks
        has_many :offers, -> { distinct }, through: :credits, source: :course

  has_many :registrations
    has_many :courses, through: :registrations
  
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

  def name
    last_first
  end

  # FIXME: allow for discards
  def mark_credit(credit)
    marks = credit.marks.where(student: self)
    marks.map(&:percent).sum/credit.length
  end

  def mark_course(course)
    course.credits.map { |credit| credit.weight * mark_credit(credit) }.sum / 100
  end

  def marks_course(course)
    course.credits.map { |credit| mark_credit(credit) }
  end
end
