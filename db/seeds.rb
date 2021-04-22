# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Musicmark.destroy_all
Category.destroy_all
Kind.destroy_all

cat = Category.create(name: 'music', character: true, genre: 'Pop')
cat1 = Category.create(name: 'letters', character: false, genre: 'Romantic')
cat2 = Category.create(name: 'video', character: true, genre: 'Reggae')

sub1 = Category.create(name: 'music', character: true, genre: 'Reggae')
sub2 = Category.create(name: 'letras', character: true, genre: 'Pop')
sub3 = Category.create(name: 'video', character: true, genre: 'Romantic')
sub4 = Category.create(name: 'music', character: true, genre: 'Regaeton')
sub5 = Category.create(name: 'letras', character: true, genre: 'Urbano')
sub6 = Category.create(name: 'music', character: true, genre: 'Pop')
sub7 = Category.create(name: 'video', character: true, genre: 'Sad')
sub8 = Category.create(name: 'letras', character: true, genre: 'Reggae')
sub9 = Category.create(name: 'music', character: true, genre: 'Rancheras')
sub10 = Category.create(name: 'video', character: true, genre: 'Reggae')


kind = Kind.create(name: 'video')
kind1 = Kind.create(name: 'letters')
kind2 = Kind.create(name: 'multimedia')


music = Musicmark.create!(name: 'thunder', band:'Imagine Dragons', album: 'example', category: cat, kind: kind)
music = Musicmark.create!(name: 'eiffel', band:'blue', album: 'example', category: cat1, kind: kind1)
music = Musicmark.create!(name: 'midnight Sky', band:'Miley Cyrus', album: 'example', category: cat2, kind: kind2)
music = Musicmark.create!(name: 'Dont worry be happy', band:'Bob Marley', album: 'example', category: cat, kind: kind)
music = Musicmark.create!(name: 'See You Again', band:'Wiz Khalifa', album: 'example', category: cat1, kind: kind1)
music = Musicmark.create!(name: 'Video Games', band:'Lana del Rey', album: 'example', category: cat2, kind: kind2)
music = Musicmark.create!(name: 'The Greatest', band:'Sia', album: 'example', category: cat, kind: kind)
music = Musicmark.create!(name: 'One call away', band:'Charlie Puth', album: 'example', category: cat1, kind: kind1)
music = Musicmark.create!(name: 'Deajaría todo', band:'Chayanne', album: 'example', category: cat2, kind: kind2)
music = Musicmark.create!(name: 'Ride', band:'Lana del Rey', album: 'example', category: cat, kind: kind)
music = Musicmark.create!(name: 'Quiero', band:'Ricardo Arjona', album: 'example', category: cat1, kind: kind1)
music = Musicmark.create!(name: 'Lose you to love me', band:'Selena Gomez', album: 'example', category: cat2, kind: kind2)
music = Musicmark.create!(name: 'Un siglo sin ti', band:'Chayanne', album: 'example', category: cat1, kind: kind1)
music = Musicmark.create!(name: 'Blue Jeans', band:'Lana del Rey', album: 'example', category: cat, kind: kind)
