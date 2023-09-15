#define ASTEROID_SIZE 4
#define MAX_OBJS 10
#define MAXI_MOBS 0
#define OBJ_PROB 20
#define MOB_PROB 30

/obj/machinery/asteroid_magnet/planet
	name = "planetary asteroid magnet"
	desc = "A massive solenoid used to attract asteroids and other such material from nearby fields for mineral acquisition."
	icon = 'icons/obj/machines/power/fusion.dmi'
	icon_state = "injector0"
	density = 1
	idle_power_usage = 0 KILOWATTS // Displays etc. Actual attraction of the asteroid takes far more.
	active_power_usage = 0 KILOWATTS
	construct_state = /decl/machine_construction/default/panel_closed/computer/no_deconstruct
	uncreated_component_parts = null
	stat_immune = BROKEN | NOPOWER | MAINT | EMPED | NOSCREEN | NOINPUT
	base_type = /obj/machinery/asteroid_magnet/planet
	anchored = 1
	dir = SOUTH

/obj/machinery/asteroid_magnet/planet/ui_interact(var/mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1)
	var/list/data = list()
	var/obj/effect/overmap/event/meteor/asteroid = get_asteroid()
	if(istype(asteroid))
		var/decl/asteroid_class/class = GET_DECL(asteroid.class)
		var/datum/overmap_quadrant/quadrant = get_quadrant()
		data["error"] = FALSE
		data["asteroid_type"] = "[class.name]"
		data["asteroid_desc"] = "[class.desc]"
		data["attracting"] = (use_power == POWER_USE_ACTIVE)
		data["progress"] = attraction_progress
		if(quadrant)
			data["hostility"] = quadrant.get_hostility_level()
		else
			data["hostility"] = 0
	else
		data["error"] = asteroid // get_asteroid() returns an error if the asteroid could not be found.

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "asteroid_magnet.tmpl", "Asteroid Magnet Control", 400, 600)
		ui.set_auto_update(1)
		ui.set_initial_data(data)
		ui.open()


/obj/machinery/asteroid_magnet/planet/Process()
	if(use_power == POWER_USE_IDLE)
		return

	var/obj/effect/overmap/event/meteor/asteroid = get_asteroid()
	if(istype(asteroid)) // Check to ensure the asteroid is still in range.
		if(attraction_progress >= 100) // Successfully attracted an asteroid.
			attraction_progress = 0
			if(!generate_asteroid(asteroid))
				visible_message(SPAN_DANGER("\The [src] flashes numerous errors!"))
			update_use_power(POWER_USE_IDLE)
			return
		attraction_progress += 2
	else
		attraction_progress = 0
		visible_message(SPAN_WARNING("\The [src] flashes an 'Out of range' error!"))
		update_use_power(POWER_USE_IDLE)
		return

/obj/machinery/asteroid_magnet/planet/generate_asteroid(var/obj/effect/overmap/event/meteor/asteroid)
	if(!asteroid)
		return FALSE
	var/turf/center_turf = get_ranged_target_turf(get_turf(src), dir, ASTEROID_SIZE+1) // +1 for the sake of not enveloping the asteroid magnet.
	if(!center_turf) // Null check just in case.
		return FALSE

//	asteroid.spent = TRUE
	var/decl/asteroid_class/class = GET_DECL(/decl/asteroid_class/asteroid/ironlow)
	if(!class)
		return FALSE
	var/decl/strata/asteroid/asteroid_strata = pick(class.possible_stratas)
	if(asteroid_strata)
		// This is a little gross, but it's better than having a ridiculous amount of turf subtypes.
		global.default_strata_type_by_z["[z]"] = asteroid_strata
	var/list/outer_types = class.outer_types // Rocks etc.
	var/list/inner_types = class.inner_types // Minerals, open turfs etc.
	var/list/object_types = class.object_types
	var/list/mob_types = class.mob_types
	var/maxi_mobs = 0


	for(var/mob/living/M in range(10, src))
		shake_camera(M, 10, 5)

	for(var/mob/living/M in range(ASTEROID_SIZE, center_turf))
		// Don't be standing where the asteroid is about to be.
		M.throw_at(get_random_edge_turf(global.reverse_dir[dir],TRANSITIONEDGE + 2, z), 250, 5)

	var/list/target_turfs = RANGE_TURFS(center_turf, ASTEROID_SIZE)

	var/num_objs = 0
	var/num_mobs = 0

	for(var/turf/T in target_turfs)
		if(T.density || !istype(get_area(T), /area/exoplanet))
			continue // No dropping asteroids in the middle of a room.
		var/switch_type = T.type
		var/dist = get_dist(center_turf, T) // Determine how far away the turf is from the center. Nearer tiles have much a much lower chance of being empty.
		var/det = max(0, dist + rand(-1, 1))
		var/out_ub = ASTEROID_SIZE
		var/out_lb = ASTEROID_SIZE/2

		var/in_ub = ASTEROID_SIZE/2 - 1
		var/in_lb = 0

		// This doesn't play nicely with a switch statement.
		if(det >= out_lb && det <= out_ub)
			T.ChangeTurf(pick(outer_types))
		else if(det >= in_lb && det <= in_ub)
			T.ChangeTurf(pick(inner_types))
		if(istype(T, /turf/exterior/wall))
			var/turf/exterior/wall/wT = T
			wT.floor_type = switch_type
		if(length(mob_types) && !T.density && num_mobs < maxi_mobs && prob(MOB_PROB)) // Only spawn mobs on non-dense turfs.
			num_mobs++
			var/mob_type = pickweight(mob_types)
			new mob_type(T)

		if(length(object_types) && !T.density && num_objs < MAX_OBJS && prob(OBJ_PROB))
			if(!class.objs_inside_only || (det >= in_lb && det <= in_ub))
				num_objs++
				var/obj_type = pickweight(object_types)
				new obj_type(T)

	playsound(src, 'sound/effects/metalscrape3.ogg', 50, 2)
	visible_message(SPAN_NOTICE("There's a terrible sound of screeching metal as \the [src] attracts a neaby asteroid!"))
	return TRUE


/obj/machinery/asteroid_magnet/planet/get_asteroid()
	return SSquadrants.planet_meteor


#undef ASTEROID_SIZE
#undef MAX_OBJS
#define MAXI_MOBS
#undef OBJ_PROB
#undef MOB_PROB