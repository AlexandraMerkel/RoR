json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :min_age, :genre, :duration, :movie_company_id
  json.url movie_url(movie, format: :json)
end
