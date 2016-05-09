module ApplicationHelper

  # to markup percentage marks
  def level(percent)
    case percent
    when 0 then 'fail'
    when 100 then 'gold'
    when (0...35) then 'poor'
    when (75...100) then 'star'
    else 'norm'
    end
  end
end
