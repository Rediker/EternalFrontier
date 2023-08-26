/obj/item/modular_computer/tablet
	name = "tablet computer"
	desc = "A small, portable microcomputer."
	icon = 'icons/obj/modular_computers/modular_tablet.dmi'
	icon_state = "tablet"
	w_class = ITEM_SIZE_SMALL
	light_strength = 2 // same as PDAs
	interact_sounds = list('sound/machines/pda_click.ogg')
	interact_sound_volume = 20
	computer_type = /datum/extension/assembly/modular_computer/tablet
	matter = list(
		/decl/material/solid/metal/aluminium = MATTER_AMOUNT_SECONDARY,
		/decl/material/solid/metal/copper    = MATTER_AMOUNT_REINFORCEMENT,
		/decl/material/solid/silicon         = MATTER_AMOUNT_REINFORCEMENT,
	)

/obj/item/modular_computer/tablet/lease
	desc = "A small, portable microcomputer. This one has a gold and blue stripe, and a serial number stamped into the case."
	icon_state = "tabletsol"

/obj/item/modular_computer/tablet/solgov
	name = "SolGov Administration Tablet"
	desc = "A small tablet, used to monitor and administrate the innerworkings of SolGov's frontier program. You should probably return this if it's not in SolGov's hands."
	icon_state = "tabletsg"
	light_strength = 3

/obj/item/modular_computer/tablet/solgov/consul
	name = "SolGov High Administration Tablet"
	desc = "A small tablet, used to monitor and administrate SolGov's frontier program. This one is laced with a golden, shiny trim, with purple embroidery. It belongs to someone important. You should definitely return this if it's not in SolGov's hands."
	icon_state = "tabletconsul"
	light_strength = 4
	interact_sound_volume = 50 // you should know they're doing something.
