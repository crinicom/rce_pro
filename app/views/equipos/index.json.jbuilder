json.array!(@equipos) do |equipo|
  json.extract! equipo, :id
  json.url equipo_url(equipo, format: :json)
end
