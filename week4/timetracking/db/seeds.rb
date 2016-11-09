# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
projectA = Project.create!(name: "IronHack", description: "Ironhack is an international coding school")
projectB = Project.create!(name: "SSNLive", description: "Live school sports")
projectC = Project.create!(name: "Youtube", description: "Youtube on you watch")
projectD = Project.create!(name: "Enki", description: "New Ruby course")
projectE = Project.create!(name: "Apple", description: "Apple iPhone 8")
projectF = Project.create!(name: "Twillio")
projectG = Project.create!(name: "Coding Dojo")
projectH = Project.create!(name: "Facebook")
projectI = Project.create!(name: "Instagram")
projectJ = Project.create!(name: "Electron")


TimeEntry.create(hours: 2, minutes: 30, comments: "stuff", date: Date.today, project: projectA)
TimeEntry.create(hours: 4, minutes: 41, comments: "stuff", date: Date.today-2, project: projectA)
TimeEntry.create(hours: 5, minutes: 39, comments: "stuff", date: Date.today-5, project: projectB)
TimeEntry.create(hours: 1, minutes: 23, comments: "stuff", date: Date.today-1, project: projectB)
TimeEntry.create(hours: 6, minutes: 35, comments: "stuff", date: Date.today-10, project: projectB)
TimeEntry.create(hours: 8, minutes: 20, comments: "stuff", date: Date.today-20, project: projectC)
