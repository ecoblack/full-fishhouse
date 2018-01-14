# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.production?

Product.create!(name: 'Вомер', body: 'х/к', category_id: )
Product.create!(name: 'Голець', х/к с/г УВРК, кг.	category_id: )
Product.create!(name: 'Горбуша х/к б/г УВРК, кг.',	category_id: )
Product.create!(name: 'Кальмар філе х/к "КІТ"',	 category_id: )
Product.create!(name: 'Карп г/к	', 	category_id: )
Product.create!(name: 'Лещ г/к	', 	 	category_id: )

Product.create!(name: 'Лосось филе х/к	 ',	category_id: )
Product.create!(name: 'Масляная х/к филе	', 	category_id: )
Product.create!(name: 'Набор к пиву х/к 	', category_id: )
Product.create!(name: 'Окунь г/к 	 ',	 category_id: )
Product.create!(name: 'Окунь г/к б/г, УВРК патран. Mosrkoy	', category_id: )
Product.create!(name: 'Осетр филе х/к	 ',	 category_id: )
Product.create!(name: 'Палтус спинка х/к УВРК, кг.	', category_id: )
Product.create!(name: 'Сайра г/к УВРК, кг.	', category_id: )
Product.create!(name: 'Сайра х/к "КІТ", УВРК	', category_id: )
Product.create!(name: 'Скумбрия г/к б/г УВРК	', 	 category_id: )
Product.create!(name: 'Скумбрія г/к с/г УВРК, кг.	', category_id: )
Product.create!(name: 'Скумбрія х/к б/г УВРК, кг.	', category_id: )
Product.create!(name: 'Скумбрія х/к с/г, УВРК +дейнеко',	 category_id: )
Product.create!(name: 'Сом филе х/к',category_id: )
Product.create!(name: 'Ставрида г/к Кит',	 category_id: )
Product.create!(name: 'Судак г/к',	 category_id: )
Product.create!(name: 'Толстолоб г/к',	 	category_id: )
Product.create!(name: 'Толстолоб филе х/к',	 	 category_id: )
Product.create!(name: 'Тунец филе х/к',	 	category_id: )
Product.create!(name: 'Форель филе',	 х/к	 	category_id: )
Product.create!(name: 'Щука',	 г/к	 	 category_id: )
Product.create!(name: 'барабулька',	 г/к	 	 category_id: )
Product.create!(name: 'кинг-клип',	 category_id: )
Product.create!(name: 'мойва', г/к	 	category_id: )
Product.create!(name: 'Окунь', г/к	 	category_id: )
Product.create!(name: 'окунь речной', гк	 	category_id: )
Product.create!(name: 'сибас, дорадо',	 	 category_id: )
Product.create!(name: 'скумбрия', г/к б/г 	 	 category_id: )
Product.create!(name: 'скумбрия сголовой' 	category_id: )
Product.create!(name:  'хек', г/к	)category_id: )

