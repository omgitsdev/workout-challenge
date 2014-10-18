# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dev = User.create(username: "Dev", email: "dev@mks.com", password: '11111111')
stephan = User.create(username: "Stephan", email: "stephan@mks.com", password: '11111111')
peng = User.create(username: "Peng", email: "peng@mks.com", password: '11111111')
shaan = User.create(username: "Shaan", email: "shaan@mks.com", password: '11111111')
harsh = User.create(username: "Harsh", email: "harsh@mks.com", password: '11111111')
shehzan = User.create(username: "Shehzan", email: "shehzan@mks.com", password: '11111111')

mks = Group.create(name:"mks", isPublic: true)
shaan.group = mks
harsh.group = mks
shehzan.group = mks
mks.save


sfc2 = Group.create(name:"SFC2", isPublic: false)
dev.group = sfc2
stephan.group = sfc2
peng.group = sfc2
sfc2.save

running = Challenge.new(name:"Run 1 mile", frequency: 'daily', wager: 10, duration: 30)
running.group = mks
running.save

lifting = Challenge.new(name:"Lift weights", frequency: 'weekly', wager: 20, duration: 90)
lifting.group = sfc2
lifting.save
