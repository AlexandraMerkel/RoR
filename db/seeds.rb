# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Люди
pr1 = Person.create(last_name: 'Хэнкс', first_name: 'Том', birthday: Date.new(1956, 7, 9))
pr2 = Person.create(last_name: 'МакКеллен', first_name: 'Иэн', birthday: Date.new(1939, 5, 25))
pr3 = Person.create(last_name: 'Дауни младший', first_name: 'Роберт', birthday: Date.new(1965, 4, 4))
pr4 = Person.create(last_name: 'Хабенский', first_name: 'Константин', second_name: 'Юрьевич', birthday: Date.new(1972, 1, 11))
pr5 = Person.create(last_name: 'Фармига', first_name: 'Вера', birthday: Date.new(1973, 8, 6))
pr6 = Person.create(last_name: 'Тернер', first_name: 'Софи', birthday: Date.new(1996, 2, 21))
pr7 = Person.create(last_name: 'Асмус', first_name: 'Кристина', second_name: 'Игоревна', birthday: Date.new(1988, 4, 14))
pr8 = Person.create(last_name: 'Нолан', first_name: 'Кристофер', birthday: Date.new(1970, 7, 30))
pr9 = Person.create(last_name: 'Циммер', first_name: 'Ханс', birthday: Date.new(1957, 9, 12))

#Страны
ct1 = Country.create(name: 'Россия')
ct2 = Country.create(name: 'США')
ct3 = Country.create(name: 'Канада')

# Студии и фильмы
st = MovieCompany.create(name: 'Warner Bros. Pictures')
mv1 = Movie.create(name: 'Зеленая миля', min_age: '16', genre: '5', duration: '189', movie_company: st)
mv2 = Movie.create(name: 'Интерстеллар', min_age: '15', genre: '0', duration: '169', movie_company: st)
st = MovieCompany.create(name: 'New Line Cinema')
mv3 = Movie.create(name: 'Властелин колец: Возвращение Короля', min_age: '12', genre: '16', duration: '201', movie_company: st)
mv4 = Movie.create(name: 'Заклятие', min_age: '16', genre: '14', duration: '112', movie_company: st)
st = MovieCompany.create(name: 'Marvel Studios Inc.')
mv5 = Movie.create(name: 'Мстители', min_age: '12', genre: '15', duration: '142', movie_company: st)
st = MovieCompany.create(name: '20th Century Fox Film Corporation')
mv6 = Movie.create(name: 'Люди Икс: Апокалипсис', min_age: '12', genre: '15', duration: '136', movie_company: st)
st = MovieCompany.create(name: 'Мармот-фильм')
mv7 = Movie.create(name: 'Географ глобус пропил', min_age: '16', genre: '5', duration: '125', movie_company: st)
st = MovieCompany.create(name: 'Базелевс Продакшн')
mv8 = Movie.create(name: 'Ёлки', min_age: '12', genre: '7', duration: '90', movie_company: st)
st = MovieCompany.create(name: 'DreamWorks SKG ')
mv9 = Movie.create(name: 'Поймай меня, если сможешь', min_age: '12', genre: '0', duration: '141', movie_company: st)

# Cвязи фильмов и стран
mv1.countries << ct2
mv2.countries << ct2
mv3.countries << ct2
mv4.countries << ct2
mv5.countries << ct2
mv6.countries << ct2
mv7.countries << ct1
mv8.countries << ct1
mv9.countries << ct2
mv9.countries << ct3

# Роли людей в фильмах
mvpr = MoviePerson.create(role: 'актёр', movie: mv1, person: pr1)
mvpr = MoviePerson.create(role: 'актёр', movie: mv9, person: pr1)
mvpr = MoviePerson.create(role: 'актёр', movie: mv3, person: pr2)
mvpr = MoviePerson.create(role: 'актёр', movie: mv5, person: pr3)
mvpr = MoviePerson.create(role: 'актёр', movie: mv7, person: pr4)
mvpr = MoviePerson.create(role: 'актёр', movie: mv4, person: pr5)
mvpr = MoviePerson.create(role: 'актёр', movie: mv6, person: pr6)
mvpr = MoviePerson.create(role: 'актёр', movie: mv8, person: pr7)
mvpr = MoviePerson.create(role: 'режиссер', movie: mv2, person: pr8)
mvpr = MoviePerson.create(role: 'композитор', movie: mv2, person: pr9)

# Кинотеатры
cn1 = Cinema.create(name: 'Радуга Кино', address: 'Москва, пр-т Андропова, 8')
cn2 = Cinema.create(name: 'Люксор', address: 'Москва, Каширское ш., 14')
cn3 = Cinema.create(name: 'Формула кино', address: 'Москва, Театральный пр-д, 5')

# Посадочные зоны в залах кинотеатров
zn1 = Zone.create(name: 'vip-зона')
zn2 = Zone.create(name: 'первые ряды/задние ряды')
zn3 = Zone.create(name: 'боковые места')

# Расписания сеансов и цены
ctm1 = CinemaTimetable.create(cinema: cn1, movie: mv5, hall: 'Северная Америка', start: Time.new(2016, 5, 7, 14, 30, 0))
pc = Price.create(cost:'400', cinema_timetable: ctm1, zone: zn1)
pc = Price.create(cost:'300', cinema_timetable: ctm1, zone: zn2)
pc = Price.create(cost:'250', cinema_timetable: ctm1, zone: zn3)
ctm2 = CinemaTimetable.create(cinema: cn1, movie: mv5, hall: 'Африка', start: Time.new(2016, 5, 7, 13, 30, 0))
pc = Price.create(cost:'350', cinema_timetable: ctm2, zone: zn1)
pc = Price.create(cost:'250', cinema_timetable: ctm2, zone: zn2)
pc = Price.create(cost:'200', cinema_timetable: ctm2, zone: zn3)
ctm3 = CinemaTimetable.create(cinema: cn1, movie: mv6, hall: 'Евразия', start: Time.new(2016, 5, 7, 15, 0, 0))
pc = Price.create(cost:'400', cinema_timetable: ctm3, zone: zn1)
pc = Price.create(cost:'300', cinema_timetable: ctm3, zone: zn2)
pc = Price.create(cost:'250', cinema_timetable: ctm3, zone: zn3)
ctm4 = CinemaTimetable.create(cinema: cn2, movie: mv5, hall: 'Сатурн', start: Time.new(2016, 5, 7, 15, 0, 0))
pc = Price.create(cost:'500', cinema_timetable: ctm4, zone: zn1)
pc = Price.create(cost:'350', cinema_timetable: ctm4, zone: zn2)
pc = Price.create(cost:'350', cinema_timetable: ctm4, zone: zn3)
ctm5 = CinemaTimetable.create(cinema: cn2, movie: mv6, hall: 'Юпитер', start: Time.new(2016, 5, 7, 15, 30, 0))
pc = Price.create(cost:'500', cinema_timetable: ctm5, zone: zn1)
pc = Price.create(cost:'350', cinema_timetable: ctm5, zone: zn2)
pc = Price.create(cost:'350', cinema_timetable: ctm5, zone: zn3)
ctm6 = CinemaTimetable.create(cinema: cn2, movie: mv9, hall: 'Марс', start: Time.new(2016, 5, 7, 14, 0, 0))
pc = Price.create(cost:'400', cinema_timetable: ctm6, zone: zn1)
pc = Price.create(cost:'250', cinema_timetable: ctm6, zone: zn2)
pc = Price.create(cost:'250', cinema_timetable: ctm6, zone: zn3)
ctm7 = CinemaTimetable.create(cinema: cn3, movie: mv5, hall: '1-й', start: Time.new(2016, 5, 7, 13, 0, 0))
pc = Price.create(cost:'300', cinema_timetable: ctm7, zone: zn1)
pc = Price.create(cost:'200', cinema_timetable: ctm7, zone: zn2)
pc = Price.create(cost:'200', cinema_timetable: ctm7, zone: zn3)
ctm8 = CinemaTimetable.create(cinema: cn3, movie: mv6, hall: '2-й', start: Time.new(2016, 5, 7, 13, 30, 0))
pc = Price.create(cost:'300', cinema_timetable: ctm8, zone: zn1)
pc = Price.create(cost:'200', cinema_timetable: ctm8, zone: zn2)
pc = Price.create(cost:'200', cinema_timetable: ctm8, zone: zn3)
ctm9 = CinemaTimetable.create(cinema: cn3, movie: mv6, hall: '3-й', start: Time.new(2016, 5, 7, 14, 30, 0))
pc = Price.create(cost:'300', cinema_timetable: ctm9, zone: zn1)
pc = Price.create(cost:'200', cinema_timetable: ctm9, zone: zn2)
pc = Price.create(cost:'200', cinema_timetable: ctm9, zone: zn3)
ctm10 = CinemaTimetable.create(cinema: cn3, movie: mv2, hall: '4-й', start: Time.new(2016, 5, 7, 16, 0, 0))
pc = Price.create(cost:'400', cinema_timetable: ctm10, zone: zn1)
pc = Price.create(cost:'350', cinema_timetable: ctm10, zone: zn2)
pc = Price.create(cost:'250', cinema_timetable: ctm10, zone: zn3)




