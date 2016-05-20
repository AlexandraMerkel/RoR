module MoviesHelper
	def movie_company_options(selected)
		options_for_select(MovieCompany.all.map{ |mc| [mc.name, mc.id] }, selected)
	end

	def genre_options(selected)
		genres = {0=>'биография', 1=>'боевик', 2=>'вестерн', 3=>'детектив', 4=>'документальный', 5=>'драма', 6=>'история', 7=>'комедия', 8=>'мелодрама', 9=>'мультфильм', 10=>'приключения', 11=>'семейный', 12=>'спорт', 13=>'триллер', 14=>'ужасы', 15=>'фантастика', 16=>'фэнтези'}
		options_for_select(genres.map { |k, v| [v, k]}, selected)
	end

	def min_age_options(selected)
		options_for_select([0,6,12,16,18], selected)
	end
end
