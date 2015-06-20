# This file should contain all the record creation needed to seed the database
#with its default values. # The data can then be loaded with the rake db:seed (or
#created alongside the db with db:setup). # # Examples: # #   cities =
#City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }]) #
#Mayor.create(name: 'Emanuel', city: cities.first) 

Video.create(title: "Batman Begins", description: "A young Bruce Wayne operates in Gotham City and Batman is born.", small_cover_url: "/tmp/Batman_Begins.jpg",
large_cover_url: "Batman_Begins_large.jpg")

Video.create(title: "Ronin", description: "A team of experts is tasked with stealing a valuable briefcase, the contents of which are a mystery.", small_cover_url: "/tmp/ronin.jpg", large_cover_url: "/tmp/ronin_lg.jpg")
Video.create(title: "Monk", description: "A brilliant detective with obsessive compulsive disorder solves crimes for the San Francisco Police Department.", small_cover_url: "/tmp/monk.jpg", large_cover_url: "/tmp/monk_large.jpg")
