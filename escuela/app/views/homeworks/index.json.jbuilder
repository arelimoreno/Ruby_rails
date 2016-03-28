json.array!(@homeworks) do |homework|
  json.extract! homework, :id, :tema, :pregunta, :subject_id
  json.url homework_url(homework, format: :json)
end
