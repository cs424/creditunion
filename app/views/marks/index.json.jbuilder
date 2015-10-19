json.array!(@marks) do |mark|
  json.extract! mark, :id, :student_id, :task_id, :score
  json.url mark_url(mark, format: :json)
end
