/* Diffrent misc types of tiles
 * Contains:
 *		Prototype
 *		Grass
 *		Wood
 *		Linoleum
 *		Carpet
 */

/obj/item/stack/tile
	name = "tile"
	singular_name = "tile"
	desc = "A non-descript floor tile."
	randpixel = 7
	w_class = ITEM_SIZE_NORMAL
	max_amount = 100
	icon = 'icons/obj/tiles.dmi'
	matter_multiplier = 0.15
	force = 1
	throwforce = 1
	throw_speed = 5
	throw_range = 20
	item_flags = 0
	obj_flags = 0
	var/replacement_turf_type = /turf/simulated/floor

/obj/item/stack/tile/proc/try_build_turf(var/mob/user, var/turf/target)

	var/ladder = (locate(/obj/structure/ladder) in target)
	if(ladder)
		to_chat(user, SPAN_WARNING("\The [ladder] is in the way."))
		return FALSE

	var/obj/structure/lattice/lattice = locate(/obj/structure/lattice, target)
	if(!lattice && target.is_open())
		to_chat(user, SPAN_WARNING("The tiles need some support, build a lattice first."))
		return FALSE

	if(!use(1))
		return FALSE

	playsound(target, 'sound/weapons/Genhit.ogg', 50, 1)
	target.ChangeTurf(replacement_turf_type, keep_air = TRUE)
	qdel(lattice)
	return TRUE

/*
 * Grass
 */
/obj/item/stack/tile/grass
	name = "grass tile"
	singular_name = "grass floor tile"
	desc = "A patch of grass like they often use on golf courses."
	icon_state = "tile_grass"
	origin_tech = "{'biotech':1}"

/*
 * Wood
 */
/obj/item/stack/tile/wood
	name = "wood floor tile"
	singular_name = "wood floor tile"
	desc = "An easy to fit wooden floor tile."
	icon_state = "tile-wood"
	color = WOOD_COLOR_GENERIC
	material = /decl/material/solid/wood

/obj/item/stack/tile/wood/cyborg
	name = "wood floor tile synthesizer"
	desc = "A device that makes wood floor tiles."
	uses_charge = 1
	charge_costs = list(250)
	stack_merge_type = /obj/item/stack/tile/wood
	build_type = /obj/item/stack/tile/wood
	max_health = ITEM_HEALTH_NO_DAMAGE
	is_spawnable_type = FALSE

/obj/item/stack/tile/mahogany
	name = "mahogany floor tile"
	singular_name = "mahogany floor tile"
	desc = "An easy to fit mahogany wood floor tile."
	icon_state = "tile-wood"
	color = WOOD_COLOR_RICH
	material = /decl/material/solid/wood

/obj/item/stack/tile/maple
	name = "maple floor tile"
	singular_name = "maple floor tile"
	desc = "An easy to fit maple wood floor tile."
	icon_state = "tile-wood"
	color = WOOD_COLOR_PALE
	material = /decl/material/solid/wood

/obj/item/stack/tile/ebony
	name = "ebony floor tile"
	singular_name = "ebony floor tile"
	desc = "An easy to fit ebony floor tile."
	icon_state = "tile-wood"
	color = WOOD_COLOR_BLACK
	material = /decl/material/solid/wood

/obj/item/stack/tile/walnut
	name = "walnut floor tile"
	singular_name = "walnut floor tile"
	desc = "An easy to fit walnut wood floor tile."
	icon_state = "tile-wood"
	color = WOOD_COLOR_CHOCOLATE
	material = /decl/material/solid/wood

/obj/item/stack/tile/bamboo
	name = "bamboo floor tile"
	singular_name = "bamboo floor tile"
	desc = "An easy to fit bamboo wood floor tile."
	icon_state = "tile-wood"
	color = WOOD_COLOR_PALE2
	material = /decl/material/solid/wood

/obj/item/stack/tile/yew
	name = "yew floor tile"
	singular_name = "yew floor tile"
	desc = "An easy to fit yew wood floor tile."
	icon_state = "tile-wood"
	color = WOOD_COLOR_YELLOW
	material = /decl/material/solid/wood

/obj/item/stack/tile/floor
	name = "steel floor tile"
	singular_name = "steel floor tile"
	desc = "Those could work as a pretty decent throwing weapon." //why?
	icon_state = "tile"
	force = 6
	material = /decl/material/solid/metal/steel
	throwforce = 15
	obj_flags = OBJ_FLAG_CONDUCTIBLE

/obj/item/stack/tile/mono
	name = "steel mono tile"
	singular_name = "steel mono tile"
	icon_state = "tile"
	material = /decl/material/solid/metal/steel
	obj_flags = OBJ_FLAG_CONDUCTIBLE

/obj/item/stack/tile/mono/fifty
	amount = 50

/obj/item/stack/tile/mono/dark
	name = "dark mono tile"
	singular_name = "dark mono tile"
	icon_state = "tile"
	material = /decl/material/solid/metal/steel
	obj_flags = OBJ_FLAG_CONDUCTIBLE

/obj/item/stack/tile/mono/dark/fifty
	amount = 50

/obj/item/stack/tile/mono/white
	name = "white mono tile"
	singular_name = "white mono tile"
	icon_state = "tile"
	material = /decl/material/solid/metal/steel
	obj_flags = OBJ_FLAG_CONDUCTIBLE

/obj/item/stack/tile/mono/white/fifty
	amount = 50

/obj/item/stack/tile/grid
	name = "grey grid tile"
	singular_name = "grey grid tile"
	icon_state = "tile_grid"
	material = /decl/material/solid/metal/steel
	obj_flags = OBJ_FLAG_CONDUCTIBLE

/obj/item/stack/tile/grid/fifty
	amount = 50

/obj/item/stack/tile/ridge
	name = "grey ridge tile"
	singular_name = "grey ridge tile"
	icon_state = "tile_ridged"
	material = /decl/material/solid/metal/steel
	obj_flags = OBJ_FLAG_CONDUCTIBLE

/obj/item/stack/tile/ridge/fifty
	amount = 50

/obj/item/stack/tile/techgrey
	name = "grey techfloor tile"
	singular_name = "grey techfloor tile"
	icon_state = "techtile_grey"
	material = /decl/material/solid/metal/steel
	obj_flags = OBJ_FLAG_CONDUCTIBLE

/obj/item/stack/tile/techgrey/fifty
	amount = 50

/obj/item/stack/tile/techgrid
	name = "grid techfloor tile"
	singular_name = "grid techfloor tile"
	icon_state = "techtile_grid"
	material = /decl/material/solid/metal/steel
	obj_flags = OBJ_FLAG_CONDUCTIBLE

/obj/item/stack/tile/techgrid/fifty
	amount = 50

/obj/item/stack/tile/techmaint
	name = "dark techfloor tile"
	singular_name = "dark techfloor tile"
	icon_state = "techtile_maint"
	material = /decl/material/solid/metal/steel
	obj_flags = OBJ_FLAG_CONDUCTIBLE

/obj/item/stack/tile/techmaint/fifty
	amount = 50

/obj/item/stack/tile/floor_white
	name = "white floor tile"
	singular_name = "white floor tile"
	icon_state = "tile_white"
	material = /decl/material/solid/plastic

/obj/item/stack/tile/floor_white/fifty
	amount = 50

/obj/item/stack/tile/floor_dark
	name = "dark floor tile"
	singular_name = "dark floor tile"
	icon_state = "fr_tile"
	material = /decl/material/solid/metal/plasteel

/obj/item/stack/tile/floor_dark/fifty
	amount = 50

/obj/item/stack/tile/floor_freezer
	name = "freezer floor tile"
	singular_name = "freezer floor tile"
	icon_state = "tile_freezer"
	material = /decl/material/solid/plastic

/obj/item/stack/tile/floor_freezer/fifty
	amount = 50

/obj/item/stack/tile/floor/cyborg
	name = "floor tile synthesizer"
	desc = "A device that makes floor tiles."
	gender = NEUTER
	matter = null
	uses_charge = 1
	charge_costs = list(250)
	stack_merge_type = /obj/item/stack/tile/floor
	build_type = /obj/item/stack/tile/floor
	max_health = ITEM_HEALTH_NO_DAMAGE
	is_spawnable_type = FALSE

/obj/item/stack/tile/roof/cyborg
	name = "roofing tile synthesizer"
	desc = "A device that makes roofing tiles."
	gender = NEUTER
	matter = null
	uses_charge = 1
	charge_costs = list(500)
	stack_merge_type = /obj/item/stack/tile/roof
	build_type = /obj/item/stack/tile/roof
	max_health = ITEM_HEALTH_NO_DAMAGE
	is_spawnable_type = FALSE

/obj/item/stack/tile/linoleum
	name = "linoleum"
	singular_name = "linoleum"
	desc = "A piece of linoleum. It is the same size as a normal floor tile!"
	icon_state = "tile_linoleum"

/obj/item/stack/tile/linoleum/fifty
	amount = 50

/obj/item/stack/tile/stone
	name = "stone slabs"
	singular_name = "stone slab"
	desc = "A smooth, flat slab of some kind of stone."
	icon_state = "tile_stone"

/*
 * Carpets
 */
/obj/item/stack/tile/carpet
	name = "carpet"
	singular_name = "carpet"
	desc = "A piece of carpet."
	icon_state = "template"

/obj/item/stack/tile/carpet/plain
	name = "plain carpet"
	singular_name = "plain carpet"
	icon_state = "tile_plain"

/obj/item/stack/tile/carpet/plain/red
	name = "plain red carpet"
	singular_name = "plain red carpet"
	icon_state = "tile_plain_red"

/obj/item/stack/tile/carpet/plain/orange
	name = "plain orange carpet"
	singular_name = "plain orange carpet"
	icon_state = "tile_plain_orange"

/obj/item/stack/tile/carpet/plain/yellow
	name = "plain yellow carpet"
	singular_name = "plain yellow carpet"
	icon_state = "tile_plain_yellow"

/obj/item/stack/tile/carpet/plain/green
	name = "plain green carpet"
	singular_name = "plain green carpet"
	icon_state = "tile_plain_green"

/obj/item/stack/tile/carpet/plain/blue
	name = "plain blue carpet"
	singular_name = "plain blue carpet"
	icon_state = "tile_plain_blue"

/obj/item/stack/tile/carpet/plain/indigo
	name = "plain indigo carpet"
	singular_name = "plain indigo carpet"
	icon_state = "tile_plain_indigo"

/obj/item/stack/tile/carpet/plain/violet
	name = "plain violet carpet"
	singular_name = "plain violet carpet"
	icon_state = "tile_plain_violet"

/obj/item/stack/tile/carpet/diamond
	name = "diamond carpet"
	singular_name = "diamond carpet"
	icon_state = "tile_diamond"

/obj/item/stack/tile/carpet/diamond/red
	name = "red diamond carpet"
	singular_name = "red diamond carpet"
	icon_state = "tile_diamond_red"

/obj/item/stack/tile/carpet/diamond/orange
	name = "orange diamond carpet"
	singular_name = "orange diamond carpet"
	icon_state = "tile_diamond_orange"

/obj/item/stack/tile/carpet/diamond/yellow
	name = "yellow diamond carpet"
	singular_name = "yellow diamond carpet"
	icon_state = "tile_diamond_yellow"

/obj/item/stack/tile/carpet/diamond/green
	name = "green diamond carpet"
	singular_name = "green diamond carpet"
	icon_state = "tile_diamond_green"

/obj/item/stack/tile/carpet/diamond/blue
	name = "blue diamond carpet"
	singular_name = "blue diamond carpet"
	icon_state = "tile_diamond_blue"

/obj/item/stack/tile/carpet/diamond/indigo
	name = "indigo diamond carpet"
	singular_name = "indigo diamond carpet"
	icon_state = "tile_diamond_indigo"

/obj/item/stack/tile/carpet/diamond/violet
	name = "violet diamond carpet"
	singular_name = "violet diamond carpet"
	icon_state = "tile_diamond_violet"

/obj/item/stack/tile/carpet/swirly
	name = "swirly carpet"
	singular_name = "swirly carpet"
	icon_state = "tile_swirly"

/obj/item/stack/tile/carpet/swirly/red
	name = "swirly red carpet"
	singular_name = "swirly red carpet"
	icon_state = "tile_swirly_red"

/obj/item/stack/tile/carpet/swirly/orange
	name = "swirly orange carpet"
	singular_name = "swirly orange carpet"
	icon_state = "tile_swirly_orange"

/obj/item/stack/tile/carpet/swirly/yellow
	name = "swirly yellow carpet"
	singular_name = "swirly yellow carpet"
	icon_state = "tile_swirly_yellow"

/obj/item/stack/tile/carpet/swirly/green
	name = "swirly green carpet"
	singular_name = "swirly green carpet"
	icon_state = "tile_swirly_green"

/obj/item/stack/tile/carpet/swirly/blue
	name = "swirly blue carpet"
	singular_name = "swirly blue carpet"
	icon_state = "tile_swirly_blue"

/obj/item/stack/tile/carpet/swirly/indigo
	name = "swirly indigo carpet"
	singular_name = "swirly indigo carpet"
	icon_state = "tile_swirly_indigo"

/obj/item/stack/tile/carpet/swirly/violet
	name = "swirly violet carpet"
	singular_name = "swirly violet carpet"
	icon_state = "tile_swirly_violet"

/obj/item/stack/tile/carpet/swirly/magenta
	name = "swirly magenta carpet"
	singular_name = "swirly magenta carpet"
	icon_state = "tile_swirly_magenta"


/obj/item/stack/tile/pool
	name = "pool tiling"
	desc = "A set of tiles designed to build fluid pools."
	singular_name = "pool tile"
	icon_state = "tile_pool"
	material = /decl/material/solid/metal/steel

// Roofing tiles; not quite the same behavior here.
/obj/item/stack/tile/roof
	name = "roofing tile"
	singular_name = "roofing tile"
	desc = "A non-descript roofing tile."
	matter_multiplier = 0.3
	icon_state = "tile"
	material = /decl/material/solid/metal/steel

/obj/item/stack/tile/roof/try_build_turf(var/mob/user, var/turf/target)

	// No point roofing a tile that is set explicitly to be roofed.
	if(target.is_outside == OUTSIDE_NO)
		to_chat(user, SPAN_WARNING("\The [target] is already roofed."))
		return FALSE

	// We need either a wall on our level, or a non-open turf one level up, to support the roof.
	var/has_support = FALSE
	for(var/checkdir in global.cardinal)
		var/turf/T = get_step(target, checkdir)
		if(!T)
			continue
		if(T.density || T.is_outside == OUTSIDE_NO) // Explicit check for roofed turfs
			has_support = TRUE
			break
		if(HasAbove(T.z))
			var/turf/above = GetAbove(T)
			if(!above.is_open())
				has_support = TRUE
				break
	if(!has_support)
		to_chat(user, SPAN_WARNING("You need either an adjacent wall below, or an adjacent roof tile above, to build a new roof section."))
		return FALSE

	// Multiz needs a turf spawned above, while single-level does not.
	var/turf/replace_turf
	if(HasAbove(target.z))
		replace_turf = GetAbove(target)
		if(!replace_turf.is_open())
			to_chat(user, SPAN_WARNING("\The [target] is already roofed."))
			return FALSE

	if(!use(1))
		return FALSE

	playsound(target, 'sound/weapons/Genhit.ogg', 50, 1)
	if(replace_turf)
		replace_turf.ChangeTurf(replacement_turf_type, keep_air = TRUE)
	else
		target.set_outside(OUTSIDE_NO)
	to_chat(user, SPAN_NOTICE("You put up a roof over \the [target]."))
	return TRUE

/obj/item/stack/tile/elevator
	name = "elevator floor tile"
	singular_name = "elevator floor tile"
	icon_state = "tile_elevator"
	material = /decl/material/solid/metal/plasteel

/obj/item/stack/tile/elevator/fifty
	amount = 50