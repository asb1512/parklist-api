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
User.delete_all

# Creation of National Parks
national_parks = [
  {name: 'Acadia', location: 'Maine', image: 'https://upload.wikimedia.org/wikipedia/commons/9/93/Bass_Harbor_Head_Light_Station_2016.jpg'},
  {name: 'American Samoa', location: 'American Somoa', image: 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Ofu_Beach_American_Samoa_US_National_Park_Service.jpg'},
  {name: 'Arches', location: 'Utah', image: 'https://upload.wikimedia.org/wikipedia/commons/7/78/USA_Arches_NP_Delicate_Arch%281%29.jpg'},
  {name: 'Badlands', location: 'South Dakota', image: 'https://upload.wikimedia.org/wikipedia/commons/e/ee/Badlands_Overlook_at_Sunset.jpg'},
  {name: 'Big Bend', location: 'Texas', image: 'https://upload.wikimedia.org/wikipedia/commons/4/40/On_the_Border_%2839960085292%29.jpg'},
  {name: 'Biscayne', location: 'Florida', image: 'https://upload.wikimedia.org/wikipedia/commons/d/df/Biscayne_NP_snorkeling.jpg'},
  {name: 'Black Canyon of the Gunnison', location: 'Colorado', image: 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Black_canyon_gunnison_Colorado.jpg'},
  {name: 'Bryce Canyon', location: 'Utah', image: 'https://upload.wikimedia.org/wikipedia/commons/c/c3/Inspiration_Point_Bryce_Canyon_November_2018_panorama.jpg'},
  {name: 'Canyonlands', location: 'Utah', image: 'https://upload.wikimedia.org/wikipedia/commons/7/78/Canyonlands_National_Park%E2%80%A6Needles_area_%286294480744%29.jpg'},
  {name: 'Capitol Reef', location: 'Utah', image: 'https://upload.wikimedia.org/wikipedia/commons/4/40/Cassidy_Arch%2C_Capitol_Reef_National_Park.JPG'},
  {name: 'Carlsbad Caverns', location: 'New Mexico', image: 'https://upload.wikimedia.org/wikipedia/commons/0/02/Carlsbad_Caverns.jpg'},
  {name: 'Channel Islands', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/8/82/Santa_Cruz_Island_CA_DSC_4323_ad.JPG'},
  {name: 'Congaree', location: 'South Carolina', image: 'https://upload.wikimedia.org/wikipedia/commons/6/6e/Bald_cypress_and_creek_%287166139814%29.jpg'},
  {name: 'Crater Lake', location: 'Oregon', image: 'https://upload.wikimedia.org/wikipedia/commons/0/01/Crater_Lake_winter_pano2.jpg'},
  {name: 'Cuyahoga Valley', location: 'Ohio', image: 'https://upload.wikimedia.org/wikipedia/commons/a/a4/Cuyahoga_Valley_National_Park_20.jpg'},
  {name: 'Death Valley', location: 'California, Nevada', image: 'https://upload.wikimedia.org/wikipedia/commons/d/d8/Isolated_Desert.jpg'},
  {name: 'Denali', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/9/91/Wonder_Lake_and_Denali.jpg'},
  {name: 'Dry Tortugas', location: 'Florida', image: 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Fort-Jefferson_Dry-Tortugas.jpg'},
  {name: 'Everglades', location: 'Florida', image: 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Pinelands_Sunrise_%281%29_NPSPhoto%2C_Sarah_Zenner_%289255147763%29.jpg'},
  {name: 'Gates of the Arctic', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/f/fc/Remote_river_in_Gates_of_the_Arctic_%2816524035298%29.jpg'},
  {name: 'Gateway Arch', location: 'Missouri', image: 'https://upload.wikimedia.org/wikipedia/commons/d/de/St_Louis_night_expblend.jpg'},
  {name: 'Glacier', location: 'Montana', image: 'https://upload.wikimedia.org/wikipedia/commons/5/51/Mountain_Goat_at_Hidden_Lake.jpg'},
  {name: 'Glacier Bay', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Glacier_Bay_National_Park%2C_July_28%2C_2012.jpg'},
  {name: 'Grand Canyon', location: 'Arizona', image: 'https://upload.wikimedia.org/wikipedia/commons/f/f9/USA_09847_Grand_Canyon_Luca_Galuzzi_2007.jpg'},
  {name: 'Grand Teton', location: 'Wyoming', image: 'https://upload.wikimedia.org/wikipedia/commons/e/e8/Cathedral_Group_GTNP1.jpg'},
  {name: 'Great Basin', location: 'Nevada', image: 'https://upload.wikimedia.org/wikipedia/commons/7/78/Upper_Lehman_Creek.jpg'},
  {name: 'Great Sand Dunes', location: 'Colorado', image: 'https://upload.wikimedia.org/wikipedia/commons/7/74/Sun_and_Shadow_Patterns_on_Dunes_%2828471118064%29.jpg'},
  {name: 'Great Smoky Mountains', location: 'North Carolina, Tennessee', image: 'https://upload.wikimedia.org/wikipedia/commons/f/f1/Foothills_Parkway%2C_November_2018--Joye_Ardyn_Durham_%2831031302587%29.jpg'},
  {name: 'Guadalupe Mountains', location: 'Texas', image: 'https://upload.wikimedia.org/wikipedia/commons/a/a8/El_Capitan_from_US_Route_62_DSC_5495_ed_ad.jpg'},
  {name: 'Haleakala', location: 'Hawaii', image: 'https://upload.wikimedia.org/wikipedia/commons/4/48/Haleakala_National_Park_02.jpg'},
  {name: "Hawai'i Volcanoes", location: 'Hawaii', image: 'https://upload.wikimedia.org/wikipedia/commons/0/0c/Sulfur_dioxide_emissions_from_the_Halemaumau_vent_04-08-1_1.jpg'},
  {name: 'Hot Springs', location: 'Arkansas', image: 'https://upload.wikimedia.org/wikipedia/commons/a/a4/Hots_Springs_National_Park_aerial.jpg'},
  {name: 'Indiana Dunes', location: 'Indiana', image: 'https://upload.wikimedia.org/wikipedia/commons/7/7c/2010-11-26_3060x2040_portage_indiana_dunes.jpg'},
  {name: 'Isle Royale', location: 'Michigan', image: 'https://upload.wikimedia.org/wikipedia/commons/7/7c/IsleRoyalePlane.jpg'},
  {name: 'Joshua Tree', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Joshua_Tree_-_Rock_formation_in_Real_Hidden_Valley_1.jpg'},
  {name: 'Katmai', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/e/e0/Grizzly_mama_bear_with_spring_cubs._Naknek_Lake%2C_Katmai_National_Park%2C_Alaska.jpg'},
  {name: 'Kenai Fjords', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/0/00/Kenai_Fjords_National_Park_ENBLA20.jpg'},
  {name: 'Kings Canyon', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/3/38/Copper_Creek_Trail.jpg'},
  {name: 'Kobuk Valley', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/6/6b/Wetlands_along_the_Kobuk_River_%288029770162%29.jpg'},
  {name: 'Lake Clark', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Lake_Clark_Place_Name_Project_images._Credit_Dev_Charm_Khalsa_NPS._%2836bde271-64b3-447a-b18a-9421e5e07284%29.jpg'},
  {name: 'Lassen Volcanic', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/6/6b/Lake_Helen%2C_Lassen_Volcanic_National_Park%2C_in_June_2020.jpg'},
  {name: 'Mammoth Cave', location: 'Kentucky', image: 'https://upload.wikimedia.org/wikipedia/commons/f/f5/Mammoth_Cave_National_Park_007.jpg'},
  {name: 'Mesa Verde', location: 'Colorado', image: 'https://upload.wikimedia.org/wikipedia/commons/e/eb/Mesa_Verde_National_Park_Cliff_Palace_2006_09_12.jpg'},
  {name: 'Mount Rainier', location: 'Washington', image: 'https://upload.wikimedia.org/wikipedia/commons/1/10/Tatoosh_Range_WA_MRNP1.jpg'},
  {name: 'New River Gorge', location: 'West Virginia', image: 'https://upload.wikimedia.org/wikipedia/commons/1/11/New_River_Gorge_Bridge.jpg'},
  {name: 'North Cascades', location: 'Washington', image: 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Cascade_Pass.jpg'},
  {name: 'Olympic', location: 'Washington', image: 'https://upload.wikimedia.org/wikipedia/commons/1/19/Acer_macrophyllum_in_Hoh_ValleyB.jpg'},
  {name: 'Petrified Forest', location: 'Arizona', image: 'https://upload.wikimedia.org/wikipedia/commons/e/e8/The_PEFO_Tepees.jpg'},
  {name: 'Pinnacles', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/b/b9/Pinnacles_National_Park.jpg'},
  {name: 'Redwood', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/d/de/Redwood_National_Park%2C_fog_in_the_forest.jpg'},
  {name: 'Rocky Mountain', location: 'Colorado', image: 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Bierstadt_Lake%2C_Rocky_Mountain_National_Park%2C_USA.jpg'},
  {name: 'Saguaro', location: 'Arizona', image: 'https://upload.wikimedia.org/wikipedia/commons/4/47/Saguaronationalparl17102008.jpg'},
  {name: 'Sequoia', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/7/7c/Giant_sequoias_in_Sequoia_National_Park_2013.jpg'},
  {name: 'Shenandoah', location: 'Virginia', image: 'https://upload.wikimedia.org/wikipedia/commons/6/63/Early_Fall_at_Dark_Hollow_Falls_%2822028259442%29.jpg'},
  {name: 'Theodore Roosevelt', location: 'North Dakota', image: 'https://upload.wikimedia.org/wikipedia/commons/3/34/View_of_Theodore_Roosevelt_National_Park.jpg'},
  {name: 'Virgin Islands', location: 'U.S. Virgin Islands', image: 'https://upload.wikimedia.org/wikipedia/commons/5/55/St_John_Trunk_Bay_1.jpg'},
  {name: 'Voyageurs', location: 'Minnesota', image: 'https://upload.wikimedia.org/wikipedia/commons/b/bd/Voyageurs_National_Park.jpg'},
  {name: 'White Sands', location: 'New Mexico', image: 'https://upload.wikimedia.org/wikipedia/commons/1/10/White_Sands_New_Mexico_USA.jpg'},
  {name: 'Wind Cave', location: 'South Dakota', image: 'https://upload.wikimedia.org/wikipedia/commons/b/b5/Wind_Cave_lower.jpg'},
  {name: 'Wrangell–St. Elias', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/e/e2/Rain_in_the_Wrangell_Mountains.jpg'},
  {name: 'Yellowstone', location: 'Wyoming, Montana, Idaho', image: 'https://upload.wikimedia.org/wikipedia/commons/8/89/Grand_Prismatic_Spring_2013.jpg'},
  {name: 'Yosemite', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Half_Dome_from_Glacier_Point%2C_Yosemite_NP_-_Diliff.jpg'},
  {name: 'Zion', location: 'Utah', image: 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Angels_Landing.jpg'}
]

national_parks.each do |park|
  new_park = Park.new(name: park[:name], location: park[:location], image: park[:image])
  new_park.save
end

# Creation of several users
users = [
  {email: 'test@gmail.com', username: 'test-user-1', password: 'test1', bio: 'I am a digital nomad.'},
  {email: 'test@aol.com', username: 'test-user-2', password: 'test2', bio: 'I am geologist who loves nature.'},
  {email: 'test@yahoo.com', username: 'test-user-3', password: 'test3', bio: 'Trying to check each park off my bucket list.'}
]

users.each do |user|
  new_user = User.new(email: user[:email], username: [:username], password: user[:password], bio: user[:bio])
  new_user.save
end