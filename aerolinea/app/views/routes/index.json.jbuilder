json.array!(@routes) do |route|
  json.extract! route, :id, :origen, :destino, :horario_salida, :duracion_aprox
  json.url route_url(route, format: :json)
end
