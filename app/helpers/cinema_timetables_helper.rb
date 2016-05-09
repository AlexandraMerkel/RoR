module CinemaTimetablesHelper
	def movie_options(selected)
		options_for_select(Movie.all.map{ |mv| [mv.name, mv.id] }, selected)
	end

        def cinema_options(selected)
		options_for_select(Cinema.all.map{ |cn| [cn.name, cn.id] }, selected)
	end
end
