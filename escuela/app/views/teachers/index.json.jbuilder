json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :nombre, :apellido, :identificacion, :edad, :perfil
  json.url teacher_url(teacher, format: :json)
end
