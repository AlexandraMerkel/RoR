json.array!(@prices) do |price|
  json.extract! price, :id, :cost, :cinema_timetable_id, :zone_id
  json.url price_url(price, format: :json)
end
