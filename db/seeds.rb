# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(username: 'mwtas')
user2 = User.create!(username: 'ko')

ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user2.id, favorite: true)
ArtworkShare.create!(artwork_id: artwork2.id, viewer_id: user2.id)

artwork1 = Artwork.create!(title: 'nighthawks', image_url: 'google.com', artist_id: user1.id)
artwork2 = Artwork.create!(title: 'mona lisa', image_url: 'google1.com', artist_id: user2.id, favorite: true)



User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all
Comment.destroy_all
Like.destroy_all