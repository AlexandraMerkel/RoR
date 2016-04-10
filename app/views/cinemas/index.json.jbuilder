json.array!(@cinemas) do |cinema|
  json.extract! cinema, :id, :name, :address
  json.url cinema_url(cinema, format: :json)
end
