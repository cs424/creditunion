class HomeController < ApplicationController
  def index
    @students = Student.all.sort_by(&:number)
    @tasks = Task.all
  end
end
