json.array!(@estados) do |estado|
  json.extract! estado, :id
  json.url estado_url(estado, format: :json)
end
