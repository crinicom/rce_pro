json.array!(@participantes) do |participante|
  json.extract! participante, :id
  json.url participante_url(participante, format: :json)
end
