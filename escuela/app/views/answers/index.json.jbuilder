json.array!(@answers) do |answer|
  json.extract! answer, :id, :respuesta, :nombre, :student_id, :homework_id
  json.url answer_url(answer, format: :json)
end
