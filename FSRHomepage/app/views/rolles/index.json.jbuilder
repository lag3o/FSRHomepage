json.array!(@rolles) do |rolle|
  json.extract! rolle, :id
  json.url rolle_url(rolle, format: :json)
end
