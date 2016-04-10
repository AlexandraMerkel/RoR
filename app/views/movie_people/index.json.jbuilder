json.array!(@movie_people) do |movie_person|
  json.extract! movie_person, :id, :role, :movie_id, :person_id
  json.url movie_person_url(movie_person, format: :json)
end
