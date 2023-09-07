/obj/item/staff
	name = "wizards staff"
	desc = "Apparently a staff used by the wizard."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "staff"
	force = 3.0
	throwforce = 5
	throw_speed = 1
	throw_range = 5
	w_class = ITEM_SIZE_SMALL
	attack_verb = list("bludgeoned", "whacked", "disciplined")
	material = /decl/material/solid/wood


/obj/item/staff/broom
	name = "broom"
	desc = "Used for sweeping, and flying into the night while cackling. Black cat not included."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "broom"
	material = /decl/material/solid/wood
	matter = list(/decl/material/solid/cloth = MATTER_AMOUNT_SECONDARY)

/obj/item/staff/gentcane
	name = "gentleman's cane"
	desc = "An ebony can with an ivory tip."
	icon = 'icons/obj/items/cane.dmi'
	icon_state = "cane"
	item_state = "stick"
	material = /decl/material/solid/wood/ebony
	matter = list(/decl/material/solid/bone = MATTER_AMOUNT_TRACE) //No ivory material :c

/obj/item/staff/scepter
	name = "royal scepter"
	desc = "An adorned scepter, plated with gold. It's crown holds a magnificent tazanite jewel, strapped in with gold. It has a sharp cross at the end of it. It's large bulbous handle provides a wonderful grip should affairs break down."
	icon = 'icons/obj/items/weapon/scepter.dmi'
	icon_state = "staff"
	force = 5
	throwforce = 5
	throw_speed = 1
	throw_range = 5
	slot_flags = SLOT_LOWER_BODY
	w_class = ITEM_SIZE_NORMAL
	attack_verb = list("culturally bejeweled", "cultivatively glamorized", "sophisticatedly instructed")
	material = /decl/material/solid/metal/gold
	hitsound = 'sound/weapons/bejeweled'
	var/agonyforce = 50
	var/stunforce = 10

/obj/item/staff/scepter/apply_hit_effect(mob/living/target, mob/living/user, var/hit_zone)
	if(isrobot(target))
		return ..()

	var/agony = agonyforce
	var/stun = stunforce
	var/obj/item/organ/external/affecting = null
	if(ishuman(target))
		var/mob/living/carbon/human/H = target
		affecting = GET_EXTERNAL_ORGAN(H, hit_zone)
	if(user && user.a_intent == I_HURT)
		. = ..()
		if(.)
			return

		//whacking someone causes a much poorer electrical contact than deliberately prodding them.
		stun *= 1
		agony *= 1	//whacking someone causes a much poorer contact than prodding them.

		//we can't really extract the actual hit zone from ..(), unfortunately. Just act like they attacked the area they intended to.
		playsound(loc, 'sound/weapons/bejeweled', 50, 1, -1)

	//stun effects
	if(status)
		target.stun_effect_act(stun, agony, hit_zone, src)
		msg_admin_attack("[key_name(user)] stunned [key_name(target)] with the [src].")
		deductcharge(hitcost)

		if(ishuman(target))
			var/mob/living/carbon/human/H = target
			H.forcesay(global.hit_appends)

	return 1