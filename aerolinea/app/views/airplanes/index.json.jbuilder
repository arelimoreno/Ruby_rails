json.array!(@airplanes) do |airplane|
  json.extract! airplane, :id, :codigo, :nombre, :modelo, :aerolinea, :capacidad
  json.url airplane_url(airplane, format: :json)
end
