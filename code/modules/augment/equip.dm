/// Subtype of equipment modules that attempts to equip its item to a specified clothing slot.
/obj/item/organ/internal/augment/active/simple/equip
	var/equip_slot

/obj/item/organ/internal/augment/active/simple/equip/deploy()
	if(owner.equip_to_slot_if_possible(holding, equip_slot))
		owner.visible_message(
			SPAN_WARNING("\The [owner] extends \his [holding.name] from \his [limb.name]."),
			SPAN_NOTICE("You extend your [holding.name] from your [limb.name].")
		)
		return TRUE
	else
		to_chat(owner, SPAN_WARNING("Your [holding.name] fails to deploy."))