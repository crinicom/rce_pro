json.array!(@tipo_entradas) do |tipo_entrada|
  json.extract! tipo_entrada, :id
  json.url tipo_entrada_url(tipo_entrada, format: :json)
end
