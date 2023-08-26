//
// Outpost Interior
//
/area/kleibkhar
	name = "DONT USE ME"
	icon_state = "toilet"
	area_flags = AREA_FLAG_ION_SHIELDED | AREA_FLAG_RAD_SHIELDED

/area/kleibkhar/outpost
	name = "Outpost"
	base_turf = /turf/exterior/barren

/area/kleibkhar/outpost/sleeproom
	name = "Cyrogenic Storage"
	icon_state = "cryo"

/area/kleibkhar/outpost/hallway
	name = "Hallways"
	icon_state = "hallC1"

/area/kleibkhar/outpost/computer
	name = "Computer Room"
	icon_state = "green"

/area/kleibkhar/outpost/it
	name = "Server Room"
	icon_state = "server"

/area/kleibkhar/outpost/mining
	name = "Ore Processing Room"
	icon_state = "green"

/area/kleibkhar/outpost/cloning
	name = "Cloning Room"
	icon_state = "green"

/area/kleibkhar/outpost/infirmary
	name = "Infirmary"
	icon_state = "medbay"

/area/kleibkhar/outpost/infirmary/exam
	name = "Examination Room"
	icon_state = "exam_room"

/area/kleibkhar/outpost/infirmary/surgery
	name = "Surgery Room"
	icon_state = "surgery"

/area/kleibkhar/outpost/infirmary/storage
	name = "Storage Room"
	icon_state = "storage"

/area/kleibkhar/outpost/solar_array
	name = "Solar Maintenance"
	icon_state = "SolarcontrolS"

/area/kleibkhar/outpost/mess_hall
	name = "Mess Hall"
	icon_state = "crew_quarters"

/area/kleibkhar/outpost/custodial
	name = "Custodial Cabinet"
	icon_state = "janitor"

/area/kleibkhar/outpost/hydroponics
	name = "Hydroponics"
	icon_state = "hydro"

/area/kleibkhar/outpost/washroom
	name = "Washroom"
	icon_state = "restrooms"

/area/kleibkhar/outpost/cargo
	name = "Cargo Office"
	icon_state = "quart"

/area/kleibkhar/outpost/cargo/warehouse
	name = "Warehouse"
	icon_state = "quartstorage"

/area/kleibkhar/atmos_pump
	name = "Atmospheric Exchanger"
	icon_state = "atmos"
	is_outside = OUTSIDE_YES

//
// Planet Exterior
//
/area/exoplanet/kleibkhar
	name = "Xanadu"
	icon_state = "green"
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_ION_SHIELDED | AREA_FLAG_RAD_SHIELDED | AREA_FLAG_EXTERNAL
	base_turf = /turf/exterior/barren
	open_turf = /turf/exterior/barren //For now
	is_outside = OUTSIDE_YES

/area/exoplanet/kleibkhar/sky
	name = "Up Above"
	icon_state = "blueold"
	base_turf = /turf/exterior/open
	open_turf = /turf/exterior/open

/area/exoplanet/kleibkhar/mines
	name = "Deep Underground"
	icon_state = "cave"
	ignore_mining_regen = TRUE
	is_outside = OUTSIDE_NO
	base_turf = /turf/exterior/barren
	open_turf = /turf/exterior/open
	area_flags = AREA_FLAG_IS_NOT_PERSISTENT | AREA_FLAG_IS_BACKGROUND | AREA_FLAG_ION_SHIELDED | AREA_FLAG_RAD_SHIELDED

/area/exoplanet/kleibkhar/mines/depth_1
	icon_state = "cave"
	ignore_mining_regen = FALSE

/area/exoplanet/kleibkhar/mines/depth_2
	name = "Deepest Underground"
	icon_state = "cave"
	ignore_mining_regen = FALSE

/area/exoplanet/kleibkhar/mines/exits
	name = "Mine Exit"
	icon_state = "exit"
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_ION_SHIELDED | AREA_FLAG_RAD_SHIELDED

/area/exoplanet/kleibkhar/supply_shuttle_dock
	name = "Supply Shuttle Dock"
	icon_state = "yellow"
	base_turf = /turf/simulated/floor/plating //Needed for shuttles
	open_turf = /turf/exterior/barren
	area_flags = AREA_FLAG_IS_NOT_PERSISTENT | AREA_FLAG_IS_BACKGROUND | AREA_FLAG_ION_SHIELDED | AREA_FLAG_RAD_SHIELDED | AREA_FLAG_EXTERNAL

//crims areas

/area/nativitas
	name = "\improper nativitas"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg')
	icon = 'maps/frontier/nativitas_areas.dmi'
	icon_state = "default"

/area/nativitas/command

/area/nativitas/hull
	name = "Nativitas Hull"
	icon_state = "hull"

/area/nativitas/command/wing

/area/nativitas/command/wing/west
	name = "Nativitas West Wing"
	icon_state = "com_wing_west"

/area/nativitas/command/wing/east
	name = "Nativitas East Wing"
	icon_state = "com_wing_east"

/area/nativitas/command/wing/north
	name = "Nativitas North Wing"
	icon_state = "com_wing_north"

/area/nativitas/command/wing/south
	name = "Nativitas South Wing"
	icon_state = "com_wing_south"

/area/nativitas/command/office/bureaucrat/one
	name = "Nativitas Bureaucrat One Office"
	icon_state = "com_office_1"

/area/nativitas/command/office/bureaucrat/two
	name = "Nativitas Bureaucrat two Office"
	icon_state = "com_office_2"

/area/nativitas/command/office/important/director
	name = "Nativitas Consul Office"
	icon_state = "com_office_director"

/area/nativitas/command/office/important/hos
	name = "Nativitas Chief Sentinel Office"
	icon_state = "com_office_hos"

/area/nativitas/command/office/important/hop
	name = "Nativitas High Cardinal Office"
	icon_state = "com_office_hop"

/area/nativitas/command/other/meeting
	name = "Nativitas Command Meeting Room"
	icon_state = "com_meeting"

/area/nativitas/command/other/records
	name = "Nativitas Records Room"
	icon_state = "com_records"

/area/nativitas/command/other/vault
	name = "Nativitas Vault"
	icon_state = "com_vault"

/area/nativitas/command/other/mainframe
	name = "Nativitas Mainframe Core"
	icon_state = "com_mainframe"

/area/nativitas/command/other/cryo
	name = "Nativitas Cryo Area"
	icon_state = "com_cryo"

/area/nativitas/security

/area/nativitas/security/cell/one
	name = "Nativitas Peacekeeper Cell One"
	icon_state = "sec_cell_1"

/area/nativitas/security/cell/two
	name = "Nativitas Peacekeeper Cell Two"
	icon_state = "sec_cell_2"

/area/nativitas/security/cell/holding
	name = "Nativitas Peacekeeper Holding Cell"
	icon_state = "sec_cell_holding"

/area/nativitas/security/storage
	name = "Nativitas Peacekeeper Storage"
	icon_state = "sec_storage"

/area/nativitas/security/hall
	name = "Nativitas Peacekeeper Hallway"
	icon_state = "sec_hall"

/area/nativitas/engineering

/area/nativitas/engineering/bay
	name = "Nativitas Engineering Bay"
	icon_state = "eng_bay"

/area/nativitas/engineering/solars
	name = "Nativitas Solar Array"
	icon_state = "eng_solars"

/area/nativitas/engineering/hangar
	name = "Nativitas Hangar Array"
	icon_state = "end_hangar"

/area/nativitas/engineering/atmos
	name = "Nativitas Atmospherics Bay"
	icon_state = "eng_atmos"

/area/nativitas/engineering/power
	name = "Nativitas Power Room"
	icon_state = "eng_power"

/area/nativitas/medical

/area/nativitas/medical/reception
	name = "Nativitas Medical Reception"
	icon_state = "med_lobby"

/area/nativitas/medical/treatment
	name = "Nativitas Medical Treatment Bay"
	icon_state = "med_treatment"

/area/nativitas/medical/chemistry
	name = "Nativitas Chemical Synthesis Room"
	icon_state = "med_chem"

/area/nativitas/medical/surgery
	name = "Nativitas Surgical Theater"
	icon_state = "med_surgery"

/area/nativitas/medical/storage
	name = "Nativitas Medical Storage"
	icon_state = "med_storage"

/area/nativitas/medical/hall
	name = "Nativitas Medical Hall"
	icon_state = "med_hall"

/area/nativitas/service

/area/nativitas/service/supply
	name = "Nativitas Cargo Room"
	icon_state = "serv_supply"

/area/nativitas/service/mining
	name = "Nativitas Mining Center"
	icon_state = "serv_mining"

/area/nativitas/service/adherent
	name = "Nativitas Adherent Bay"
	icon_state = "serv_adherent"

/area/nativitas/service/restrooms
	name = "Nativitas Restrooms"
	icon_state = "serv_restrooms"

/area/nativitas/public

/area/nativitas/public/business/one
	name = "Nativitas Business 1"
	icon_state = "pub_bus_1"

/area/nativitas/public/business/two
	name = "Nativitas Business 2"
	icon_state = "pub_bus_2"

/area/nativitas/public/business/three
	name = "Nativitas Business 3"
	icon_state = "pub_bus_3"

/area/nativitas/public/business/four
	name = "Nativitas Business 4"
	icon_state = "pub_bus_4"

/area/nativitas/research
	name = "Nativitas Research Bay"
	icon_state = "rnd"
