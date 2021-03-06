module PricesHelper
	def cinema_timetable_options(selected)
		options_for_select(CinemaTimetable.all.map{ |ct| ["кт.#{ct.cinema.name} - #{ct.movie.name} - зал #{ct.hall}: #{ct.start}", ct.id] }, selected)
	end

	def zone_options(selected)
		options_for_select(Zone.all.map{ |zn| [zn.name, zn.id] }, selected)
	end
end
