json.array!(@students) do |student|
  json.extract! student, :id, :number, :first, :last, :status, :comment, :username
  json.url student_url(student, format: :json)
end
