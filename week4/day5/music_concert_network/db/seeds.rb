# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

concert1 = Concert.create(artist: "Pitbull",venue: "American Airlines Arena",city: "Miami",date: Date.today+5 ,description: "International love - Worldwide", price: 15 )
concert2 = Concert.create(artist: "Winky D",venue: "Glamis Arena",city: "Harare",date: Date.today+20 ,description: "Gafa Futi", price: 20 )
concert3 = Concert.create(artist: "Killer T",venue: "Arena",city: "Gweru",date: Date.today+6 ,description: "Vapfana vasina zvigunwe mubutsu ", price: 150 )
concert4 = Concert.create(artist: "Beyonce",venue: "McCamish Pavillion",city: "Atlanta",date: Date.today+23 ,description: "The best I never had", price: 5 )
concert5 = Concert.create(artist: "Mafikizolo",venue: "Newlands Stadium",city: "Cape Town",date: Date.today+10 ,description: "Two bho bho", price: 105 )
concert6 = Concert.create(artist: "Sauti Soul",venue: "Nairobi Serena",city: "Nairobi",date: Date.today+50 ,description: "Sura yako muzuri mama", price: 25 )
