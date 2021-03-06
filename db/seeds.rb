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
  {name: 'Acadia', location: 'Maine', image: 'https://upload.wikimedia.org/wikipedia/commons/9/93/Bass_Harbor_Head_Light_Station_2016.jpg', small_image: 'https://www.national-park.com/wp-content/uploads/2016/04/Welcome-to-Acadia-National-Park.jpeg'},
  {name: 'American Samoa', location: 'American Somoa', image: 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Ofu_Beach_American_Samoa_US_National_Park_Service.jpg', small_image: 'https://www.tripsavvy.com/thmb/QzwAqsm38rNZkzaeRLeQoOIcUEA=/5150x2897/smart/filters:no_upscale()/national-park-of-american-samoa--tutuila-island--american-samoa--south-pacific--pacific-167450898-597a74e803f40200108aab77.jpg'},
  {name: 'Arches', location: 'Utah', image: 'https://upload.wikimedia.org/wikipedia/commons/7/78/USA_Arches_NP_Delicate_Arch%281%29.jpg', small_image: 'https://upload.travelawaits.com/ta/uploads/2021/04/fd6b9ac619ad401076d104128a656fd6b9a.jpg'},
  {name: 'Badlands', location: 'South Dakota', image: 'https://upload.wikimedia.org/wikipedia/commons/e/ee/Badlands_Overlook_at_Sunset.jpg', small_image: 'https://www.doi.gov/sites/doi.gov/files/uploads/badlands-np-andreas-eckert-ste-small_1.jpg'},
  {name: 'Big Bend', location: 'Texas', image: 'https://upload.wikimedia.org/wikipedia/commons/4/40/On_the_Border_%2839960085292%29.jpg', small_image: 'https://ehniafpzrb6.exactdn.com/stuff-to-do/wp-content/uploads/2021/01/22152800/Big-Bend-National-Park.png'},
  {name: 'Biscayne', location: 'Florida', image: 'https://upload.wikimedia.org/wikipedia/commons/d/df/Biscayne_NP_snorkeling.jpg', small_image: 'https://fh-sites.imgix.net/sites/1573/2018/07/16180625/Deering-Estate-Lighthouses-of-Biscayne-Bay-Boat-Cruise-image-1-e1532368541964.jpg?auto=compress%2Cformat&w=700&h=700&fit=max'},
  {name: 'Black Canyon of the Gunnison', location: 'Colorado', image: 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Black_canyon_gunnison_Colorado.jpg', small_image: 'https://nas-national-prod.s3.amazonaws.com/styles/hero_image/s3/black-canyon-of-the-gunnison.jpg?itok=BDskMxSv'},
  {name: 'Bryce Canyon', location: 'Utah', image: 'https://upload.wikimedia.org/wikipedia/commons/c/c3/Inspiration_Point_Bryce_Canyon_November_2018_panorama.jpg', small_image: 'https://www.myutahparks.com/wp-content/uploads/2021/02/Bryce-Amphitheater-Inspiration-Point_DP_1600.jpg'},
  {name: 'Canyonlands', location: 'Utah', image: 'https://upload.wikimedia.org/wikipedia/commons/7/78/Canyonlands_National_Park%E2%80%A6Needles_area_%286294480744%29.jpg', small_image: 'https://www.discovermoab.com/wp-content/uploads/2017/06/canyonlands_main_image.jpg'},
  {name: 'Capitol Reef', location: 'Utah', image: 'https://upload.wikimedia.org/wikipedia/commons/4/40/Cassidy_Arch%2C_Capitol_Reef_National_Park.JPG', small_image: 'https://national-park.com/wp-content/uploads/2016/04/Welcome-to-Capitol-Reef-National-Park.jpg'},
  {name: 'Carlsbad Caverns', location: 'New Mexico', image: 'https://upload.wikimedia.org/wikipedia/commons/0/02/Carlsbad_Caverns.jpg', small_image: 'https://www.nps.gov/articles/images/cave-main.jpg?maxwidth=650&autorotate=false'},
  {name: 'Channel Islands', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/8/82/Santa_Cruz_Island_CA_DSC_4323_ad.JPG', small_image: 'https://visitoxnard.com/imager/s3_us-west-1_amazonaws_com/oxnard-2020/images/Channel-Islands-National-Park-Oxnard_PC-Benjamin-AdobeStock_167145759_e7f018298c4a7f7ebc2c8dcb801d1c37.jpeg'},
  {name: 'Congaree', location: 'South Carolina', image: 'https://upload.wikimedia.org/wikipedia/commons/6/6e/Bald_cypress_and_creek_%287166139814%29.jpg', small_image: 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F24%2F2016%2F07%2Fcongaree_boardwalk_trail_2462202_85-1.jpg'},
  {name: 'Crater Lake', location: 'Oregon', image: 'https://upload.wikimedia.org/wikipedia/commons/0/01/Crater_Lake_winter_pano2.jpg', small_image: 'https://national-park.com/wp-content/uploads/2016/04/Welcome-to-Crater-Lake-National-Park.jpeg'},
  {name: 'Cuyahoga Valley', location: 'Ohio', image: 'https://upload.wikimedia.org/wikipedia/commons/a/a4/Cuyahoga_Valley_National_Park_20.jpg', small_image: 'https://www.tripsavvy.com/thmb/FyJt3p0FKSxn9MqeuY2dYGvLSX0=/2101x1182/smart/filters:no_upscale()/brandywine-falls-in-cuyahoga-valley-national-park-e76e1780ef0a406fb770c14097912fed.jpg'},
  {name: 'Death Valley', location: 'California, Nevada', image: 'https://upload.wikimedia.org/wikipedia/commons/d/d8/Isolated_Desert.jpg', small_image: 'https://i1.wp.com/leavenotracy.com/wp-content/uploads/2018/03/What-to-do-in-death-valley-national-park-leavenotracy.com_.jpg?fit=1200%2C630&ssl=1'},
  {name: 'Denali', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/9/91/Wonder_Lake_and_Denali.jpg', small_image: 'https://www.nps.gov/dena/learn/nature/images/wildlife-landing.jpg?maxwidth=1200&maxheight=1200&autorotate=false'},
  {name: 'Dry Tortugas', location: 'Florida', image: 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Fort-Jefferson_Dry-Tortugas.jpg', small_image: 'https://thertwguys.com/wp-content/uploads/2018/09/dry_tortugas_birds_eyeview.jpg'},
  {name: 'Everglades', location: 'Florida', image: 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Pinelands_Sunrise_%281%29_NPSPhoto%2C_Sarah_Zenner_%289255147763%29.jpg', small_image: 'https://www.outsideonline.com/wp-content/uploads/2019/04/15/everglades-national-park_h.jpg'},
  {name: 'Gates of the Arctic', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/f/fc/Remote_river_in_Gates_of_the_Arctic_%2816524035298%29.jpg', small_image: 'https://www.nps.gov/gaar/images/GAAR08-0111-edit-Custom.jpg?maxwidth=650&autorotate=false'},
  {name: 'Gateway Arch', location: 'Missouri', image: 'https://upload.wikimedia.org/wikipedia/commons/d/de/St_Louis_night_expblend.jpg', small_image: 'https://www.nps.gov/common/uploads/grid_builder/jeff/crop16_9/68FEEAFE-D0A3-AE98-C13EFAFAD395D483.jpg?width=950&quality=90&mode=crop'},
  {name: 'Glacier', location: 'Montana', image: 'https://upload.wikimedia.org/wikipedia/commons/5/51/Mountain_Goat_at_Hidden_Lake.jpg', small_image: 'https://www.tripsavvy.com/thmb/3AO3wQNCRdi3MnelMlifgUnimUc=/2400x1800/smart/filters:no_upscale()/IMG_7115-e21fc727cf734a2fb38de800930605b3.jpg'},
  {name: 'Glacier Bay', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Glacier_Bay_National_Park%2C_July_28%2C_2012.jpg', small_image: 'https://npca.s3.amazonaws.com/images/9321/428de64d-1d97-4c51-8bba-8467771ab7e4-banner.jpg?1447774537'},
  {name: 'Grand Canyon', location: 'Arizona', image: 'https://upload.wikimedia.org/wikipedia/commons/f/f9/USA_09847_Grand_Canyon_Luca_Galuzzi_2007.jpg', small_image: 'https://national-park.com/wp-content/uploads/2016/04/Welcome-to-Grand-Canyon-National-Park.jpg'},
  {name: 'Grand Teton', location: 'Wyoming', image: 'https://upload.wikimedia.org/wikipedia/commons/e/e8/Cathedral_Group_GTNP1.jpg', small_image: 'https://national-park.com/wp-content/uploads/2016/04/Welcome-to-Grand-Teton-National-Park.jpg'},
  {name: 'Great Basin', location: 'Nevada', image: 'https://upload.wikimedia.org/wikipedia/commons/7/78/Upper_Lehman_Creek.jpg', small_image: 'https://www.cruiseamerica.com/getattachment/afbe10dc-7648-4c21-bccf-9e7fcd31763c/attachment.aspx'},
  {name: 'Great Sand Dunes', location: 'Colorado', image: 'https://upload.wikimedia.org/wikipedia/commons/7/74/Sun_and_Shadow_Patterns_on_Dunes_%2828471118064%29.jpg', small_image: 'https://www.nps.gov/grsa/learn/news/images/grsa-star-dune-kitcarsonpeak-2018-2-jpg.jpg'},
  {name: 'Great Smoky Mountains', location: 'North Carolina, Tennessee', image: 'https://upload.wikimedia.org/wikipedia/commons/f/f1/Foothills_Parkway%2C_November_2018--Joye_Ardyn_Durham_%2831031302587%29.jpg', small_image: 'https://www.wreg.com/wp-content/uploads/sites/18/2020/04/hypatia-h_d43cebf10258e14c41633c59f595bf83-h_6cae19e7bbd593cbd356f248fec73a8c.jpg?strip=1'},
  {name: 'Guadalupe Mountains', location: 'Texas', image: 'https://upload.wikimedia.org/wikipedia/commons/a/a8/El_Capitan_from_US_Route_62_DSC_5495_ed_ad.jpg', small_image: 'https://www.tripsavvy.com/thmb/ZJuOvwjTy22m8SoASwbBHEzatUg=/1885x1414/smart/filters:no_upscale()/el-capitan-of-guadalupe-mountains-national-park-1124355613-a9948372927f411da39d805610f6fe4c.jpg'},
  {name: 'Haleakala', location: 'Hawaii', image: 'https://upload.wikimedia.org/wikipedia/commons/4/48/Haleakala_National_Park_02.jpg', small_image: 'https://mauiinn.com/wp-content/uploads/2016/05/Haleakala-National-Park.jpg'},
  {name: "Hawai'i Volcanoes", location: 'Hawaii', image: 'https://upload.wikimedia.org/wikipedia/commons/0/0c/Sulfur_dioxide_emissions_from_the_Halemaumau_vent_04-08-1_1.jpg', small_image: 'https://www.rei.com/blog/wp-content/uploads/sites/4/2018/05/Hawaii-Volcanoes-National-Park_1.jpg?fit=1500%2C1056'},
  {name: 'Hot Springs', location: 'Arkansas', image: 'https://upload.wikimedia.org/wikipedia/commons/a/a4/Hots_Springs_National_Park_aerial.jpg', small_image: 'https://photos.smugmug.com/North-America/Arkansas/Hot-Springs-2015/i-tCkRndX/0/0c4bc575/X2/GMA_9062-X2.jpg'},
  {name: 'Indiana Dunes', location: 'Indiana', image: 'https://upload.wikimedia.org/wikipedia/commons/7/7c/2010-11-26_3060x2040_portage_indiana_dunes.jpg', small_image: 'https://assets.simpleviewinc.com/simpleview/image/upload/c_fill,h_621,q_75,w_966/v1/clients/southshore/Indiana_Dunes_State_Park_Pavilion_01d90b70-a975-4b18-83ed-d217e4919096.jpg'},
  {name: 'Isle Royale', location: 'Michigan', image: 'https://upload.wikimedia.org/wikipedia/commons/7/7c/IsleRoyalePlane.jpg', small_image: 'https://d2j02ha532z66v.cloudfront.net/wp-content/uploads/2018/12/IsleRoyaleNationalPark-15282.jpg'},
  {name: 'Joshua Tree', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Joshua_Tree_-_Rock_formation_in_Real_Hidden_Valley_1.jpg', small_image: 'https://i.guim.co.uk/img/media/62c0826a1b6d7d7f390f9fd2ac4b1b7f7ff4c241/0_150_3024_1815/master/3024.jpg?width=465&quality=45&auto=format&fit=max&dpr=2&s=7af20dca5e7fc8b839a36cad2f986dbf'},
  {name: 'Katmai', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/e/e0/Grizzly_mama_bear_with_spring_cubs._Naknek_Lake%2C_Katmai_National_Park%2C_Alaska.jpg', small_image: 'https://upload.wikimedia.org/wikipedia/commons/1/1e/Katmai_Crater_1980.jpg'},
  {name: 'Kenai Fjords', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/0/00/Kenai_Fjords_National_Park_ENBLA20.jpg', small_image: 'http://www.destinationparks.com/images/park/kenai-fjords-national-park-1280x853.jpg'},
  {name: 'Kings Canyon', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/3/38/Copper_Creek_Trail.jpg', small_image: 'https://npca.s3.amazonaws.com/images/8886/8fb3adcd-e878-41e7-9256-6e13825bb893-banner.jpg?1445971036'},
  {name: 'Kobuk Valley', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/6/6b/Wetlands_along_the_Kobuk_River_%288029770162%29.jpg', small_image: 'https://photos.smugmug.com/North-America/Alaska/Koubk-Valley-2016/i-b5JLbBq/1/1bbee64f/L/DSC03779-L.jpg'},
  {name: 'Lake Clark', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Lake_Clark_Place_Name_Project_images._Credit_Dev_Charm_Khalsa_NPS._%2836bde271-64b3-447a-b18a-9421e5e07284%29.jpg', small_image: 'https://national-park.com/wp-content/uploads/2016/04/Welcome-to-Lake-Clark-National-Park.jpeg'},
  {name: 'Lassen Volcanic', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/6/6b/Lake_Helen%2C_Lassen_Volcanic_National_Park%2C_in_June_2020.jpg', small_image: 'https://static.rootsrated.com/image/upload/s--iYbvReRI--/t_rr_large_traditional/edlyoxbpviqjdsowlksn.jpg'},
  {name: 'Mammoth Cave', location: 'Kentucky', image: 'https://upload.wikimedia.org/wikipedia/commons/f/f5/Mammoth_Cave_National_Park_007.jpg', small_image: 'https://cdn.aarp.net/content/dam/aarp/travel/Domestic/2020/10/1140-mammoth-national-park-hero.imgcache.rev.web.900.518.jpg'},
  {name: 'Mesa Verde', location: 'Colorado', image: 'https://upload.wikimedia.org/wikipedia/commons/e/eb/Mesa_Verde_National_Park_Cliff_Palace_2006_09_12.jpg', small_image: 'https://www.denverpost.com/wp-content/uploads/2019/04/20181121MesaVerde20.jpg'},
  {name: 'Mount Rainier', location: 'Washington', image: 'https://upload.wikimedia.org/wikipedia/commons/1/10/Tatoosh_Range_WA_MRNP1.jpg', small_image: 'https://www.doi.gov/sites/doi.gov/files/uploads/mount-rainier-np-danny-seidman-ste-small_0.jpg'},
  {name: 'New River Gorge', location: 'West Virginia', image: 'https://upload.wikimedia.org/wikipedia/commons/1/11/New_River_Gorge_Bridge.jpg', small_image: 'https://upload.travelawaits.com/ta/uploads/2021/04/87c1711810c6737420e08ae787c6c87c171.jpg'},
  {name: 'North Cascades', location: 'Washington', image: 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Cascade_Pass.jpg', small_image: 'https://s.hdnux.com/photos/75/42/30/16131589/4/1200x0.jpg'},
  {name: 'Olympic', location: 'Washington', image: 'https://upload.wikimedia.org/wikipedia/commons/1/19/Acer_macrophyllum_in_Hoh_ValleyB.jpg', small_image: 'https://img.sunset02.com/sites/default/files/styles/4_3_horizontal_inbody_900x506/public/image/2016/10/main/olympic-beach-sunset.jpg'},
  {name: 'Petrified Forest', location: 'Arizona', image: 'https://upload.wikimedia.org/wikipedia/commons/e/e8/The_PEFO_Tepees.jpg', small_image: 'https://www.visitarizona.com/imager/s3_us-west-1_amazonaws_com/aot-2020/images/landmarks/fep2sryko7dq1bxvldbm_d2dabcf721a0c19b2d05d6b7bbe9ce3f.jpg'},
  {name: 'Pinnacles', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/b/b9/Pinnacles_National_Park.jpg', small_image: 'https://www.justchasingsunsets.com/wp-content/uploads/2020/03/Pinnacles-national-park-3-1024x683.jpg'},
  {name: 'Redwood', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/d/de/Redwood_National_Park%2C_fog_in_the_forest.jpg', small_image: 'https://media-cdn.tripadvisor.com/media/photo-m/1280/18/f1/04/ba/photo1jpg.jpg'},
  {name: 'Rocky Mountain', location: 'Colorado', image: 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Bierstadt_Lake%2C_Rocky_Mountain_National_Park%2C_USA.jpg', small_image: 'https://cdn.aarp.net/content/dam/aarp/travel/Domestic/2020/07/1140-rocky-mountain-national-park.jpg'},
  {name: 'Saguaro', location: 'Arizona', image: 'https://upload.wikimedia.org/wikipedia/commons/4/47/Saguaronationalparl17102008.jpg', small_image: 'https://npca.s3.amazonaws.com/images/8678/84154386-00d4-4cc5-bba6-412160beb343-banner.jpg?1445970177'},
  {name: 'Sequoia', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/7/7c/Giant_sequoias_in_Sequoia_National_Park_2013.jpg', small_image: 'https://drupal8-prod.visitcalifornia.com/sites/drupal8-prod.visitcalifornia.com/files/styles/fluid_1200/public/vc_ca101_nationalparks_sequoiakingsnationalparks_rf_673066812_1280x640.jpg?itok=EVBZ0WOL'},
  {name: 'Shenandoah', location: 'Virginia', image: 'https://upload.wikimedia.org/wikipedia/commons/6/63/Early_Fall_at_Dark_Hollow_Falls_%2822028259442%29.jpg', small_image: 'https://cdn.aarp.net/content/dam/aarp/travel/trips/2020/08/1140-sunset-at-shenandoah-national-park.jpg'},
  {name: 'Theodore Roosevelt', location: 'North Dakota', image: 'https://upload.wikimedia.org/wikipedia/commons/3/34/View_of_Theodore_Roosevelt_National_Park.jpg', small_image: 'https://cdn.aarp.net/content/dam/aarp/travel/Domestic/2020/07/1140-painted-overlook-canyon.jpg'},
  {name: 'Virgin Islands', location: 'U.S. Virgin Islands', image: 'https://upload.wikimedia.org/wikipedia/commons/5/55/St_John_Trunk_Bay_1.jpg', small_image: 'https://i2.wp.com/embracesomeplace.com/wp-content/uploads/2019/09/DSC08393.jpg?resize=1100%2C734&ssl=1'},
  {name: 'Voyageurs', location: 'Minnesota', image: 'https://upload.wikimedia.org/wikipedia/commons/b/bd/Voyageurs_National_Park.jpg', small_image: 'https://national-park.com/wp-content/uploads/2016/04/Welcome-to-Voyageurs-National-Park.jpg'},
  {name: 'White Sands', location: 'New Mexico', image: 'https://upload.wikimedia.org/wikipedia/commons/1/10/White_Sands_New_Mexico_USA.jpg', small_image: 'https://nomanbefore.com/wp-content/uploads/2018/12/White_Sands_National_Monument_New_Mexico-4534.jpg'},
  {name: 'Wind Cave', location: 'South Dakota', image: 'https://upload.wikimedia.org/wikipedia/commons/b/b5/Wind_Cave_lower.jpg', small_image: 'https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/f_auto,q_auto,w_1100/v1555296873/shape/mentalfloss/wind_cave_primary.jpg'},
  {name: 'Wrangell???St. Elias', location: 'Alaska', image: 'https://upload.wikimedia.org/wikipedia/commons/e/e2/Rain_in_the_Wrangell_Mountains.jpg', small_image: 'https://www.doi.gov/sites/doi.gov/files/uploads/mt_st_elias_nps_photo_neal_herbert_2015.jpg'},
  {name: 'Yellowstone', location: 'Wyoming, Montana, Idaho', image: 'https://upload.wikimedia.org/wikipedia/commons/8/89/Grand_Prismatic_Spring_2013.jpg', small_image: 'https://i0.wp.com/www.hachettebookgroup.com/wp-content/uploads/2019/01/Yellowstone_CastleGeyser_PengZhuang-Dreamstime-e1618497899718.jpg?resize=1024%2C768&ssl=1'},
  {name: 'Yosemite', location: 'California', image: 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Half_Dome_from_Glacier_Point%2C_Yosemite_NP_-_Diliff.jpg', small_image: 'https://images.unsplash.com/photo-1562310503-a918c4c61e38?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8eW9zZW1pdGUlMjBuYXRpb25hbCUyMHBhcmt8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'},
  {name: 'Zion', location: 'Utah', image: 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Angels_Landing.jpg', small_image: 'https://3gz8cg829c.execute-api.us-west-2.amazonaws.com/prod/image-renderer/16x9/full/1015/center/80/54bb867a-6477-4908-99c1-49358174d6e6-large16x9_ZionNationalPark.Getty1.jpg'}
]

national_parks.each do |park|
  new_park = Park.new(name: park[:name], location: park[:location], image: park[:image], small_image: park[:small_image])
  new_park.save
end

# Creation of several users
users = [
  {email: 'test@gmail.com', bio: 'I am a digital nomad.', admin: false},
  {email: 'test@aol.com', bio: 'I am geologist who loves nature.', admin: false},
  {email: 'test@yahoo.com', bio: 'Trying to check each park off my bucket list.', admin: false},
  {email: 'andrew@gmail.com', bio: 'Park List overlord', admin: true}
]

users.each do |user|
  new_user = User.new(email: user[:email], bio: user[:bio], admin: user[:admin])
  new_user.save
end