json.array!(@credits) do |credit|
  json.extract! credit, :id, :name, :course_id, :weight
  json.url credit_url(credit, format: :json)
end
