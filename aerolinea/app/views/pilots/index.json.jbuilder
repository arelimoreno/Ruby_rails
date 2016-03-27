json.array!(@pilots) do |pilot|
  json.extract! pilot, :id, :identificacion, :cargo, :user_id
  json.url pilot_url(pilot, format: :json)
end
