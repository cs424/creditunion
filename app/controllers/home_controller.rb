class HomeController < ApplicationController
  skip_before_action :authorize

  def index
    @students = Student.all.sort_by(&:number)
    @tasks = Task.all
  end
end
