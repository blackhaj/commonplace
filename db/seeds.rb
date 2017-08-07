# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    Note.create(note_type: 0, body: "Learn to do XYZ", done: false)
    Note.create(note_type: 1, body: "Sort out XYZ", done: false)
    Note.create(note_type: 2, body: "Idea --- Mollit non cupidatat ut aliqua aliquip sunt veniam Lorem officia. Officia minim officia ipsum sunt reprehenderit culpa anim ex labore culpa. Do minim aute dolor aliqua. Cupidatat qui sunt consequat amet dolor cillum reprehenderit minim id.")
    Note.create(note_type: 3, body: "Inspiring Quote", source: "Intelligent source")
    Note.create(note_type: 4, body: "Diary note -- Nostrud veniam commodo deserunt est enim. Pariatur nulla reprehenderit ad duis ipsum sunt culpa id. Est irure eu sint occaecat nisi amet sint. Dolor laboris culpa Lorem magna cillum anim consequat in. Ex culpa tempor proident labore aute laborum qui. Laboris deserunt tempor aute magna et consectetur consectetur magna laboris. Excepteur qui excepteur incididunt nostrud ut amet pariatur reprehenderit sunt sint. Ad anim in voluptate pariatur. Nostrud proident cillum sit proident tempor ut quis irure veniam proident duis officia. Consequat fugiat sit aliqua cupidatat deserunt ullamco. Cupidatat ea anim id consequat dolor esse commodo.")
    Note.create(note_type: 5, body: "Goal to achieve")
    Note.create(note_type: 6, body: "Important reference")
    Note.create(note_type: 7, body: "Life principle")
    Note.create(note_type: 8, body: "Something to research further")
    Note.create(note_type: 9, body: "Event", date: '2017-07-31')
    Note.create(note_type: 10, body: "Normal note about stuff -- Anim nostrud irure laborum veniam eiusmod cillum sit ex ullamco voluptate. Pariatur ipsum ea elit fugiat consectetur adipisicing. Officia tempor in duis deserunt voluptate occaecat magna ipsum et do id magna.")
end
