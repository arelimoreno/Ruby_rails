json.array!(@subjects) do |subject|
  json.extract! subject, :id, :codigo, :nombre
  json.url subject_url(subject, format: :json)
end
