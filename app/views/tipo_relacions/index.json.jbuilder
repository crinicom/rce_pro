json.array!(@tipo_relacions) do |tipo_relacion|
  json.extract! tipo_relacion, :id
  json.url tipo_relacion_url(tipo_relacion, format: :json)
end
