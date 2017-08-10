# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(email: 'blackhaj@gmail.com', password: 'password')
@date = Date.new(2017,7,28)
10.times do
    Note.create(user_id: User.first.id, note_type: 0, body: "Stuff that I need to do", done: false)
    Note.create(user_id: User.first.id, note_type: 1, body: "Stuff that I really need to do", done: false)
    Note.create(user_id: User.first.id, note_type: 2, body: "My idea is to make a commonplace note pad on the computer. One that allows seredipity of notes, is searchable, can be carried everywhere but doesn't lose the visual benefits of analog.")
    Note.create(user_id: User.first.id, note_type: 3, body: "Frustration is the prerequisite to competance", source: "Enrique Negro")
    Note.create(user_id: User.first.id, note_type: 4, body: "Today I coded alot, got frustrated with CSS and deployed my app. Multiple times", date: @date)
    Note.create(user_id: User.first.id, note_type: 5, body: "Learn to program", date: @date)
    Note.create(user_id: User.first.id, note_type: 6, body: "Reference about random stuff like phone contract start date")
    Note.create(user_id: User.first.id, note_type: 7, body: "Never make big life decisions on Monday or Tuesday")
    Note.create(user_id: User.first.id, note_type: 8, body: "Need to do further research on Authentication, building a cart and photo uploads")
    Note.create(user_id: User.first.id, note_type: 9, body: "Mums birthday. Don't forget again.", date: @date)
    Note.create(user_id: User.first.id, note_type: 10, body: "Random note about stuff that happen, brainstorms etc.")
    @date = @date.next_month
end
