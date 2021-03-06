module MoviePeopleHelper
	def person_options(selected)
		options_for_select(Person.all.map{ |pr| ["#{pr.last_name} #{pr.first_name}", pr.id] }, selected)
	end

	def movie_options(selected)
		options_for_select(Movie.all.map{ |mv| [mv.name, mv.id] }, selected)
	end
end
