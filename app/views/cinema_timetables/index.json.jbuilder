json.array!(@cinema_timetables) do |cinema_timetable|
  json.extract! cinema_timetable, :id, :cinema_id, :movie_id, :hall, :start
  json.url cinema_timetable_url(cinema_timetable, format: :json)
end
