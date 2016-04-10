json.array!(@movie_companies) do |movie_company|
  json.extract! movie_company, :id, :name
  json.url movie_company_url(movie_company, format: :json)
end
