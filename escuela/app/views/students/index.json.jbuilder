json.array!(@students) do |student|
  json.extract! student, :id, :nombre, :apellido, :identificacion, :fecha_nacimiento
  json.url student_url(student, format: :json)
end
