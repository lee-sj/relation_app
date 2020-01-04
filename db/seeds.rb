# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
date = Date.new(2015, 07, 20)
User.create!(email: 'admin@rapp.com', password: '123123')
Profile.create!(user: User.last, role: 'admin', name: 'admin', address: '서울시', mobile: '01098766789', birth: date)
User.create!(email: 'editor1@rapp.com', password: '123123')
Profile.create!(user: User.last, role: 'editor', name: 'editorA', address: '서울시', mobile: '01098766788', birth: date)
User.create!(email: 'editor2@rapp.com', password: '123123')
Profile.create!(user: User.last, role: 'editor', name: 'editorB', address: '서울시', mobile: '01098766787', birth: date)
User.create!(email: 'editor3@rapp.com', password: '123123')
Profile.create!(user: User.last, role: 'editor', name: 'editorC', address: '서울시', mobile: '01098766786', birth: date)
User.create!(email: 'test@rapp.test', password: 'testuser')
Profile.create!(user: User.last, role: 'editor', name: 'testerA', address: '서울시', mobile: '01012344321', birth: date)