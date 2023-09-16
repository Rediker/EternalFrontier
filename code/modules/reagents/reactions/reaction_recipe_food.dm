/decl/chemical_reaction/recipe/food
	result = null
	result_amount = 1
	abstract_type = /decl/chemical_reaction/recipe/food
	var/obj_result

/decl/chemical_reaction/recipe/food/on_reaction(var/datum/reagents/holder, var/created_volume, var/reaction_flags)
	..()
	var/location = get_turf(holder.get_reaction_loc())
	if(obj_result && isturf(location))
		for(var/i = 1, i <= created_volume, i++)
			new obj_result(location)

/decl/chemical_reaction/recipe/food/cheesewheel
	name = "Cheesewheel"
	required_reagents = list(/decl/material/liquid/drink/milk = 40)
	catalysts = list(/decl/material/liquid/enzyme = 5)
	mix_message = "The solution thickens and curdles into a rich yellow substance."
	minimum_temperature = 40 CELSIUS
	maximum_temperature = (40 CELSIUS) + 100
	obj_result = /obj/item/chems/food/sliceable/cheesewheel


// this has no better category but uses a different path ~ Crimsonerva
/decl/chemical_reaction/productionenzyme // make sure this is able to be produced, there's no way to obtain any prior to this PR except for admin spawns.
	name = "universal enzyme"
	result = /decl/material/liquid/enzyme
	required_reagents = list(
		/decl/material/solid/bone = 1, // available from gibbing monkeys, or any humanoid for that matter, just grind their bones
		/decl/material/solid/potassium = 1, // available from starter planet mining "potash", grind potassium bars (from smelter)
		/decl/material/liquid/drink/milk = 1 // available from biogenerator
	)
	result_amount = 5 // starts with a bit more in order to give startups a little bit more
	mix_message = "The solution gives off a whiff of yeast."

// this has no better category but uses a different path ~ Crimsonerva
/decl/chemical_reaction/productionenzyme2 // need a way to produce more once you have some; most recipes will now consume it
	name = "universal enzyme replication"
	result = /decl/material/liquid/enzyme
	required_reagents = list(
		/decl/material/liquid/fertilizer  = 1, // biogenerator "EZ-nutriment"
		/decl/material/liquid/drink/milk = 1 // available from biogenerator
	)
	catalysts = list(/decl/material/liquid/enzyme = 1) // yeast grows, would get weird if it consumed itself
	result_amount = 2 // catalyst counts as 1
	mix_message = "The solution gives off a whiff of warm yeast."

/decl/chemical_reaction/proteinproduction // need a way to produce more once you have some; most recipes will now consume it
	name = "protein production"
	result = /decl/material/liquid/nutriment/protein
	required_reagents = list(
		/decl/material/solid/meat  = 1 // grinding meat slabs
	)
	catalysts = list(/decl/material/liquid/enzyme = 1)
	result_amount = 2 // catalyst counts as 1
	mix_message = "The solution gives off beef and pork whiffs."

/decl/chemical_reaction/recipe/food/meatslab // need a way to produce more once you have some; most recipes will now consume it
	name = "meat production"
	required_reagents = list(/decl/material/solid/meat = 3, /decl/material/solid/bone  = 3)
	result_amount = 2
	mix_message = "The solution gives off industrial smells."
	obj_result = /obj/item/chems/food/meat

/decl/chemical_reaction/recipe/food/rawmeatball
	name = "Raw Meatball"
	required_reagents = list(/decl/material/liquid/nutriment/protein = 3, /decl/material/liquid/nutriment/flour = 5)
	result_amount = 3
	mix_message = "The flour thickens the processed meat until it clumps."
	obj_result = /obj/item/chems/food/rawmeatball

/decl/chemical_reaction/recipe/food/dough
	name = "Plain dough"
	required_reagents = list(/decl/material/liquid/nutriment/protein/egg = 3, /decl/material/liquid/nutriment/flour = 10, /decl/material/liquid/water = 10)
	mix_message = "The solution folds and thickens into a large ball of dough."
	obj_result = /obj/item/chems/food/dough

/decl/chemical_reaction/recipe/food/soydough
	name = "Soy dough"
	required_reagents = list(/decl/material/liquid/nutriment/plant_protein = 3, /decl/material/liquid/nutriment/flour = 10, /decl/material/liquid/water = 10)
	mix_message = "The solution folds and thickens into a large ball of dough."
	obj_result = /obj/item/chems/food/dough

/decl/chemical_reaction/recipe/food/syntiflesh
	name = "Synthetic Meat"
	required_reagents = list(/decl/material/liquid/blood = 5, /decl/material/liquid/plasticide = 1)
	mix_message = "The solution thickens disturbingly, taking on a meaty appearance."
	obj_result = /obj/item/chems/food/meat/syntiflesh

/decl/chemical_reaction/recipe/food/tofu
	name = "Tofu"
	required_reagents = list(/decl/material/liquid/drink/milk/soymilk = 10)
	catalysts = list(/decl/material/liquid/enzyme = 5)
	mix_message = "The solution thickens and clumps into a yellow-white substance."
	obj_result = /obj/item/chems/food/tofu

/decl/chemical_reaction/recipe/food/chocolate_bar
	name = "Soy Chocolate"
	required_reagents = list(/decl/material/liquid/drink/milk/soymilk = 2, /decl/material/liquid/nutriment/coco = 2, /decl/material/liquid/nutriment/sugar = 2)
	mix_message = "The solution thickens and hardens into a glossy brown substance."
	obj_result = /obj/item/chems/food/chocolatebar

/decl/chemical_reaction/recipe/food/chocolate_bar2
	name = "Milk Chocolate"
	required_reagents = list(/decl/material/liquid/drink/milk = 2, /decl/material/liquid/nutriment/coco = 2, /decl/material/liquid/nutriment/sugar = 2)
	mix_message = "The solution thickens and hardens into a glossy brown substance."
	obj_result = /obj/item/chems/food/chocolatebar
	minimum_temperature = 70 CELSIUS