# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

# User.delete_all
Meetup.delete_all
Roster.delete_all

# u1 = User.create(name: 'Henry Hill', username: 'rayray', email: 'henryhill@gmail.com', avatar_url: 'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_80%2Cw_300/MTE5NDg0MDU1MjIxODYzOTUx/henry-hill-9542499-1-402.jpg')
# u2 = User.create(name: 'Dutch Schultz', username: 'schultzy', email: 'Dutchy@beerbaron.com', avatar_url: 'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_80%2Cw_300/MTE5NDg0MDU0NzYxMjExNDA3/dutch-schultz-236042-1-402.jpg')
# u3 = User.create(name: 'Bugsy Siegel', username: 'thebuggs', email: 'BSiegel@murder.inc', avatar_url: 'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_80%2Cw_300/MTE4MDAzNDEwNzM0NTgxMjYy/bugsy-siegel-9542063-1-402.jpg')
# u4 = User.create(name: 'Al Capone', username: 'scarface', email: 'caponezone@caprese.com', avatar_url: 'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_80%2Cw_300/MTE1ODA0OTcxMTcyNzkxODIx/al-capone-9237536-1-402.jpg')
# u5 = User.create(name: 'Stephanie St. Clair', username: 'queenie', email: 'harlemqueen@harlemworld.org', avatar_url: 'http://images.mentalfloss.com/sites/default/files/1_10.png')

m1 = Meetup.create(name: 'Sauce', description: 'Come hangout out and exchange sauce recipes', location: 'Louis Italian American Restaurant', creator: "creator")
m2 = Meetup.create(name: 'La Cosa Nostra', description: 'No rats', location: 'TBD', creator: "creator" )
m3 = Meetup.create(name: 'Valentines Day Un-massacre', description: 'Come chill and not get murdered', location: 'Chi-town', creator: "creator")
m4 = Meetup.create(name: 'AA Meeting', description: 'There will be absolutely no alcohol here, wink, wink.', location: 'Speak-easy', creator: "creator")
m5 = Meetup.create(name: 'Chicken and Waffles Foodie Crawl', description: 'Lets go check out Harlems finest chicken and waffle joints', location: '139 and Lennox', creator: "creator")

# r1 = Roster.create(meetup_id: m1.id, user_id: u1.id)
# r2 = Roster.create(meetup_id: m1.id, user_id: u2.id)
# r3 = Roster.create(meetup_id: m1.id, user_id: u3.id)
# r4 = Roster.create(meetup_id: m2.id, user_id: u2.id)
# r5 = Roster.create(meetup_id: m2.id, user_id: u5.id)
# r6 = Roster.create(meetup_id: m2.id, user_id: u1.id)
# r7 = Roster.create(meetup_id: m3.id, user_id: u4.id)
# r8 = Roster.create(meetup_id: m3.id, user_id: u2.id)
# r9 = Roster.create(meetup_id: m3.id, user_id: u3.id)
# r10 = Roster.create(meetup_id: m4.id, user_id: u4.id)
# r11 = Roster.create(meetup_id: m4.id, user_id: u3.id)
# r12 = Roster.create(meetup_id: m4.id, user_id: u2.id)
# r13 = Roster.create(meetup_id: m5.id, user_id: u5.id)
# r14 = Roster.create(meetup_id: m5.id, user_id: u4.id)
# r15 = Roster.create(meetup_id: m5.id, user_id: u3.id)

# Meetup.create!(name: 'Sauce', description: '', location: 'Louis Italian American Restaurant', creator: "creator")
