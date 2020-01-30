# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Elizabeth Bishop",
             email: "eli@bishop.com",
             password:              "foobar",
             password_confirmation: "foobar")
            
User.create!(name:  "Anne Sexton",
             email: "anne@sexton.com",
             password:              "foobar",
             password_confirmation: "foobar")

User.create!(name:  "Robert Lowell",
             email: "dick@lowell.com",
             password:              "foobar",
             password_confirmation: "foobar")

User.create!(name:  "Frank O'Hara",
             email: "frank@ohara.com",
             password:              "foobar",
             password_confirmation: "foobar")

User.create!(name:  "Robert Frost",
             email: "dick@frost.com",
             password:              "foobar",
             password_confirmation: "foobar")


User.create!(name:  "Langston Hughes",
             email: "lang@hughes.com",
             password:              "foobar",
             password_confirmation: "foobar")

User.create!(name:  "Ezra Pound",
             email: "ezra@pound.com",
             password:              "foobar",
             password_confirmation: "foobar")

User.create!(name:  "T. S. Eliot",
             email: "ts@eliot.com",
             password:              "foobar",
             password_confirmation: "foobar")

Post.create!(title:  "Emily Hale Letters",
             body: "Did anyone read T. S. Eliot's letters to Ms Hale? Good god man!",
             user_id: 3)

Post.create!(title:  "Emily Hale Letters",
             body: "Those are his private letters.  Leave the man be!",
             user_id: 1)

Post.create!(title:  "Emily Hale Letters",
             body: "I think they're quite beautiful.  I've hung one on my wall.",
             user_id: 4)

Post.create!(title:  "Emily Hale Letters",
             body: "Above the toilet in the bathroom, I imagine.",
             user_id: 5)

Post.create!(title:  "Emily Hale Letters",
             body: "Let the man be.",
             user_id: 6)

Post.create!(title:  "Emily Hale Letters",
             body: "It's filth.  Absolute filth.",
             user_id: 7)

Post.create!(title:  "Emily Hale Letters || Ezra Pound is a nazi",
             body: "Oh, shut up nazi",
             user_id: 2)

Post.create!(title:  "Emily Hale Letters || Ezra Pound is a nazi",
             body: "Why do you guys keep this nazi around?",
             user_id: 4)

Post.create!(title:  "Emily Hale Letters || Ezra Pound is a nazi",
             body: "I would be up for voting the nazi out!",
             user_id: 6)

Post.create!(title:  "Emily Hale Letters",
             body: "Let's focus on these letters people",
             user_id: 3)

Post.create!(title:  "Emily Hale Letters",
             body: "The sphere of privacy is sacred.  We should not transgress it's boundries.  Stop with the letters Robert. It's invasive and cruel.",
             user_id: 1)

Post.create!(title:  "Emily Hale Letters",
             body: "Would you guys like to know which one I hung on my wall?",
             user_id: 4)

Post.create!(title:  "Emily Hale Letters",
             body: "Absolutely.",
             user_id: 2)

            