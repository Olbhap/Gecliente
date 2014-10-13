json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nif, :nombre, :apellidos, :nombre_comercial, :telefono, :telf_movil, :fax, :email, :web, :descripcion, :imagen
  json.url cliente_url(cliente, format: :json)
end
