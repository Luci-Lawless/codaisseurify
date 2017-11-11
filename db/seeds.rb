Artist.destroy_all
Song.destroy_all

#Artists

artist1 = Artist.create!(
  name: "Napalm Death",
  genre: "Grindcore",
  image_url: "remote url goes here"
)

artist2 = Artist.create!(
  name: "Brujeria",
  genre: "Death Metal/Grindcore",
  image_url: "remote url goes here"
)

artist3 = Artist.create!(
  name: "Darkthrone",
  genre: "Black Metal",
  image_url: "remote url goes here"
)

artist4 = Artist.create!(
  name: "Exodus",
  genre: "Thrash Metal",
  image_url: "remote url goes here"
)

artist5 = Artist.create!(
  name: "Cannibal Corpse",
  genre: "Death Metal",
  image_url: "remote url goes here"
)

#Songs

songs = Song.create!([
{
  song_title: "Scum",
  duration: "02:37",
  artist: artist1
},
{
  song_title: "Control",
  duration: "01:24",
  artist: artist1
},
{
  song_title: "The Kill",
  duration: "00:22",
  artist: artist1
},
{
  song_title: "Prision Without Walls",
  duration: "00:38",
  artist: artist1
},
{
  song_title: "I Abstain",
  duration: "03:31",
  artist: artist1
},
{
  song_title: "Matando Gueros",
  duration: "02:23",
  artist: artist2
},
{
  song_title: "Consejos Narcos",
  duration: "02:39",
  artist: artist2
},
{
  song_title: "La Ley de Plomo",
  duration: "02:46",
  artist: artist2
},
{
  song_title: "Satongo",
  duration: "03:25",
  artist: artist2
},
{
  song_title: "La Migra (Cruza La Frontera II)",
  duration: "01:43",
  artist: artist2
},
{
  song_title: "A Blaze in the Northern Sky",
  duration: "04:58",
  artist: artist3
},
{
  song_title: "Transilvanian Hunger",
  duration: "06:10",
  artist: artist3
},
{
  song_title: "Tundra Leach",
  duration: "05:02",
  artist: artist3
},
{
  song_title: "Too Old, Too Cold",
  duration: "03:01",
  artist: artist3
},
{
  song_title: "In the Shadow of the Horns",
  duration: "06:57",
  artist: artist3
},
{
  song_title: "The Toxic Waltz",
  duration: "04:50",
  artist: artist4
},
{
  song_title: "Bonded by Blood",
  duration: "03:44",
  artist: artist4
},
{
  song_title: "Strike of the Beast",
  duration: "03:57",
  artist: artist4
},
{
  song_title: "A Lesson in Violence",
  duration: "03:48",
  artist: artist4
},
{
  song_title: "And Then There Were None",
  duration: "04:40",
  artist: artist4
},
{
  song_title: "The Bleeding",
  duration: "04:19",
  artist: artist5
},
{
  song_title: "Staring Through the Eyes of the Death",
  duration: "03:29",
  artist: artist5
},
{
  song_title: "Pulverized",
  duration: "03:30",
  artist: artist5
},
{
  song_title: "Hatchet to the Head ",
  duration: "03:34",
  artist: artist5
},
{
  song_title: "Pit of Zombies",
  duration: "03:58",
  artist: artist5
}])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ song_title: 'Star Wars' }, { song_title: 'Lord of the Rings' }])
#   Character.create(song_title: 'Luke', movie: movies.first)
