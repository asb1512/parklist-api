# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Clear DB each time seed file is run
# User.delete_all
# Unsure if all users should be deleted with each seed of the DB
Park.delete_all

# Creation of National Parks
national_parks = [
  {name: 'Acadia', location: 'Maine', image: 'https://upload.wikimedia.org/wikipedia/commons/9/93/Bass_Harbor_Head_Light_Station_2016.jpg'},
  {name: 'American Samoa'}
]

