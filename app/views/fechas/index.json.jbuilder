json.array!(@fechas) do |fecha|
  json.extract! fecha, :id
  json.url fecha_url(fecha, format: :json)
end
