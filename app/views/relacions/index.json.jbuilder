json.array!(@relacions) do |relacion|
  json.extract! relacion, :id
  json.url relacion_url(relacion, format: :json)
end
