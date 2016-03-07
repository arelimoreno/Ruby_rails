json.array!(@facturas) do |factura|
  json.extract! factura, :id, :nombre, :apellido, :identificacion, :telefono, :producto, :descripcion, :fecha, :total, :cantidad, :iva, :valor
  json.url factura_url(factura, format: :json)
end
