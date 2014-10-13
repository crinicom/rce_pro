json.array!(@entradas) do |entrada|
  json.extract! entrada, :id
  json.url entrada_url(entrada, format: :json)
end
