json.array!(@passports) do |passport|
  json.extract! passport, :id, :tipo, :precio, :pilot_id, :route_id
  json.url passport_url(passport, format: :json)
end
