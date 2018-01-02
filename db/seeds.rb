# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ username: 'Lawrence' }, { username: 'Pikachu' }, { username: 'Eevee' }])

artworks = Artwork.create([{ title: 'test', image_url: 'not available', artist_id: User.find_by_username('Lawrence').id},
  { title: 'test', image_url: 'selfie', artist_id: User.find_by_username('Pikachu').id },
  { title: 'eeveelutions', image_url: 'pokemon', artist_id: User.find_by_username('Eevee').id }])

artwork_shares = ArtworkShare.create([{artwork_id: Artwork.all[0].id, viewer_id: User.all[1].id },
  {artwork_id: Artwork.all[1].id, viewer_id: User.all[2].id },
  {artwork_id: Artwork.all[2].id, viewer_id: User.all[0].id },
  {artwork_id: Artwork.all[2].id, viewer_id: User.all[1].id}])
