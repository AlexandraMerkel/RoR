module MoviesHelper
	def movie_company_options(selected)
		options_for_select(MovieCompany.all.map{ |mc| [mc.name, mc.id] }, selected)
	end
end
