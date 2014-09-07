json.array!(@facturas) do |factura|
  json.extract! factura, :id, :fecha_alta, :serie_factura, :numero_factura, :comentario
  json.url factura_url(factura, format: :json)
end
