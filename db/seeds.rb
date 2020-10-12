# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts("Adding your pillars")

p = Pillar.new
p.title = "Couple"
p.save!


p = Pillar.new
p.title = "Famille et Amis"
p.save!

p = Pillar.new
p.title = "Corps"
p.save!


p = Pillar.new
p.title = "Esprit"
p.save!

p = Pillar.new
p.title = "Projets Persos"
p.save!

p = Pillar.new
p.title = "Fun"
p.save!

p = Pillar.new
p.title = "Cadre de vie"
p.save!

p = Pillar.new
p.title = "Taf"
p.save!


puts = "Pillars saved"
