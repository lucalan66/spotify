# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all
Album.destroy_all



ledzeppelin = Artist.create(name: 'Led Zeppelin', 
	image_url: 'https://pbs.twimg.com/profile_images/3477665359/006b1390cb5faaa6b5bb8289222a5128.jpeg')

rush = Artist.create(name: 'Rush', 
	image_url: 'https://ichef.bbci.co.uk/images/ic/256x256/p01bqsqd.jpg')

manowar = Artist.create(name: 'Manowar', 
	image_url: 'https://c-sf.smule.com/sf/s25/arr/62/85/a75d3254-25cf-4972-bd22-b15f1478a3ec.jpg')

10.times do |i|
  ledzeppelin.albums.create(name: i + 1, image_url: "https://ichef.bbci.co.uk/images/ic/256x256/p022353z.jpg", released_at: 1970 )
  rush.albums.create(name: i + 1, image_url: "https://vignette3.wikia.nocookie.net/rockband/images/9/93/Moving_Pictures.png/revision/latest?cb=20121110021513", released_at: 2007 )
  manowar.albums.create(name: i + 1, image_url: "http://www.oohmusic.com/uploaded_audio/image/audio_image/291/large/_v=1414922365", released_at: 1980)
end
