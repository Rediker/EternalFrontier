/obj/item/storage/briefcase
	name = "briefcase"
	desc = "It's made of AUTHENTIC faux-leather and has a price-tag still attached. Its owner must be a real professional."
	icon = 'icons/obj/items/storage/briefcase.dmi'
	icon_state = "briefcase"
	item_state = "briefcase"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 8.0
	throw_speed = 1
	throw_range = 4
	w_class = ITEM_SIZE_HUGE
	max_w_class = ITEM_SIZE_NORMAL
	max_storage_space = DEFAULT_BACKPACK_STORAGE
	material = /decl/material/solid/leather/synth
	matter = list(/decl/material/solid/plastic = MATTER_AMOUNT_SECONDARY)

/obj/item/storage/wooden
	name = "collection box"
	desc = "A vintage collective box, with pollished wood."
	icon = 'icons/obj/items/storage/box.dmi'
	icon_state = "wood_collection"
	item_state = "wood_collection"
	force = 12.0
	throw_speed = 3
	throw_range = 7
	w_class = ITEM_SIZE_LARGE
	max_w_class = ITEM_SIZE_NORMAL
	max_storage_space = DEFAULT_LARGEBOX_STORAGE
	material = /decl/material/solid/leather/synth

/obj/item/storage/wooden/jewlery
	name = "jewelry box"
	desc = "A vintage jewelry box with violet flowers painted atop."
	icon = 'icons/obj/items/storage/box.dmi'
	icon_state = "wood_jewelry"
	item_state = "wood_jewelry"
	force = 12.0
	throw_speed = 3
	throw_range = 7
	w_class = ITEM_SIZE_LARGE
	max_w_class = ITEM_SIZE_NORMAL
	max_storage_space = DEFAULT_LARGEBOX_STORAGE
	material = /decl/material/solid/leather/synth