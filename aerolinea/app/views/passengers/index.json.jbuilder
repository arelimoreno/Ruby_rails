json.array!(@passengers) do |passenger|
  json.extract! passenger, :id, :nombre, :apellido, :identificacion, :edad
  json.url passenger_url(passenger, format: :json)
end
