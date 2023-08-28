// ############ ############# ############
// ############ POTTED PLANTS ############
// ############ ############# ############

// Credits: Majority of original potted plants were done by Flashkirby. An additional few were added by Cajoes.
// Potted plants were resprited in bulk to have a matching color scheme, and potted plants for their production cues, done by Crimsonerva.
// Majority of plants are now sprited by Crimsonerva, and all current pots & descriptions were made by her.
// Any sprites edited or modified are clearly labeled, along with who made what sprites, who edited which sprites, and who the original creators were.
// If any sprites are edited, taken from this code, or moved, please clearly label credits and modifications.

// Plant code was also tidied up. Should look much more readable than a bunch of jumbled together code and text. ~ Crimsonerva


/obj/item/pottedplant // Credit to flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "decrepit pot"
	desc         = "An old, dead potted plant. Its pot has been wasting away for long that it has formed cracks. Smells like compost."
	icon         = 'icons/obj/structures/potted_plants.dmi'
	icon_state   = "dead_pot"
	anchored     = FALSE // do not anchor
	layer        = ABOVE_HUMAN_LAYER
	w_class      = ITEM_SIZE_LARGE // they can be put in bags, but take lots of room.
	hitsound     = 'sound/effects/glass_crack2.ogg'
	attack_verb = list("pollenated", "seeded", "potted")
	throw_speed = 1
	throw_range = 2 // potted plants are heavy dude
	material     = /decl/material/solid/stone/ceramic //#TODO: each plant should be made of a respective material
	matter       = list(
		/decl/material/solid/clay        = MATTER_AMOUNT_REINFORCEMENT,
		/decl/material/solid/sand        = MATTER_AMOUNT_REINFORCEMENT,
		/decl/material/solid/plantmatter = MATTER_AMOUNT_SECONDARY,     //#TODO: Maybe eventually drop the plant, or some seeds or something? Plants should also be made from their ingredients.
	)


// ### ######### ###
// ### SAPPLINGS ###
// ### ######### ###

/obj/item/pottedplant/sappling // Credit to Crimsonerva for complete sprite.
	name         = "empty sappling pot"
	desc         = "A barren pot, meant for a sappling."
	icon_state   = "sappling_pot"
	w_class      = ITEM_SIZE_NORMAL // they can be put in bags, and take up some room, but will be get bigger once things are potted in them. Should be able to produce and transport these for retail purposes.

/obj/item/pottedplant/sappling/oak // Credit to Crimsonerva for complete sprite.
	name         = "potted oak tree"
	desc         = "A young oak tree, confined to its every-tightening pot. Usually found in open grassy plains. Care to water it?"
	icon_state   = "oak_sappling"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/sappling/greatoak // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted great oak tree"
	desc         = "A darkened species, similar to the oak tree. This one is much sturdier, and has a deeper complexion. Its home usually consists of deep forests."
	icon_state   = "greatoak_sappling"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/sappling/cecropia // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted cecropia tree"
	desc         = "Confined to its pot, the cecropia tree will never reach its true height as found in deep jungles and rainforests. It emits a petrichor-like smell."
	icon_state   = "cecropia_sappling"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/sappling/birch // Credit to Crimsonerva for complete sprite. Credit to Flashkirby for inspiration.
	name         = "potted birch tree"
	desc         = "Typically found in colder biomes of the americas, these potted birch has adapted to living its life in a room-temperature environment."
	icon_state   = "birch_sappling"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/sappling/spruce // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted spruce tree"
	desc         = "Synonymous with tundras and eternal winters, this spruce tree has managed to survive its whole life so far in this pot."
	icon_state   = "spruce_sappling"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/sappling/willow // Credit to Crimsonerva for complete sprite.
	name         = "potted weeping willow"
	desc         = "This willow tree is indigenous to swamps, which is probably why it is always so sad."
	icon_state   = "willow_sappling"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/sappling/palm // Credit to Crimsonerva for complete sprite.
	name         = "potted palmtree "
	desc         = "Reminds of you some tropical resort. Has some budding coconuts."
	icon_state   = "palm_sappling"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/sappling/judean // Credit to Crimsonerva for complete sprite.
	name         = "potted judean palm"
	desc         = "Wow! After being extinct for over two-thousand years, a batch of seeds was found in an ancient-world fortress somewhere in the Judea region. Resurrected in the early 2000s!"
	icon_state   = "judean_sappling"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/sappling/cherry // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted japanese cherry tree"
	desc         = "A japanese cherry tree, symbolic for its stereotypical kawaii aesthetic. It is actually very pretty, despite the stereotypes."
	icon_state   = "cherry_sappling"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/sappling/fern // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted man fern"
	desc         = "A catfish of a name, this is actually a type of tree. Typically grown in rainforests and jungles, known for its fern-like leaves, with a hefty trunk."
	icon_state   = "fern_sappling"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/sappling/rose // Credit to Crimsonerva for complete sprite.
	name         = "potted rose tree"
	desc         = "Typically known for being bushes, roses come in many varieties. This one is actually a type of tree. The crimson rose buds let off a blend of sweet aromas."
	icon_state   = "rose_sappling"
	w_class      = ITEM_SIZE_LARGE

// ### ###### ###
// ### SHRUBS ###
// ### ###### ###

/obj/item/pottedplant/shrub // Credit to Crimsonerva for complete sprite.
	name        = "empty shrub pot"
	desc         = "A barren pot, meant for a shrub."
	icon_state   = "shrub_pot"
	w_class      = ITEM_SIZE_NORMAL

/obj/item/pottedplant/shrub/yew // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted japanese yew"
	desc         = "An iconic shrub, typically seen in many space stations. The shrub you see here looks very similar to a pine, and smells similar to one."
	icon_state   = "yew_shrub"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/shrub/heart // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted heart-trimmed shrub"
	desc         = "A very loving shrub, trimmed in such a way to form a heart."
	icon_state   = "heart_shrub"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/shrub/holly // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted blue boy holly"
	desc         = "A name filled with lies, this holly shrub is actually yellow in nature. Not even its flowers are blue!"
	icon_state   = "holly_shrub"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/shrub/typical // Credit to Crimsonerva for complete sprite.
	name         = "potted shrub"
	desc         = "A young shrub. Typically what you would see in some yard of a neighbor. If you were in Sol, anyways. And lived on Earth or Mars. Probably Earth. Definitely Earth."
	icon_state   = "typical_shrub"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/shrub/perfect // Credit to Crimsonerva for complete sprite.
	name         = "potted perfectly trimmed shrub"
	desc         = "A shrub. Trimmed to perfection. A perfectionist must own this. This shrub is probably very sad. But it is perfect. Or at least looks that way."
	icon_state   = "perfect_shrub"
	w_class      = ITEM_SIZE_LARGE
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/shrub/rose // Original sprite creator DoctorRay2. Credit to Crimsonerva for editing and corrections.
	name         = "potted rose shrub"
	desc         = "A shrub that is rose. Not to be confused with a rose bush. This shrub simply has rose leaves. It is pretty, however, past its strange complexion."
	icon_state   = "rose_shrub"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/shrub/autumn // Credit to Crimsonerva for complete sprite.
	name         = "potted autumn shrub"
	desc         = "This particular shrub seems to be stuck in autumn indefinitely. There is no cure for it. It sure is beautiful, though."
	icon_state   = "autumn_shrub"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/shrub/roses // Credit to Crimsonerva for complete sprite.
	name         = "potted rose bush"
	desc         = "This bush smells of sweet pollen. Its roses glimmer in the light, powering through life, content."
	icon_state   = "roses_shrub"
	w_class      = ITEM_SIZE_LARGE

// ### ###### ###
// ### DESERT ###
// ### ###### ###

/obj/item/pottedplant/desert // Credit to Crimsonerva for complete sprite.
	name         = "empty dry pot"
	desc         = "A barren pot, meant for a dry plant."
	icon_state   = "desert_pot"
	w_class      = ITEM_SIZE_NORMAL

/obj/item/pottedplant/desert/pear // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted prickily pear"
	desc         = "A potted cactus, with budding fruits. They smell sour."
	icon_state   = "pear_desert"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/desert/tall // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted tall cactus"
	desc         = "A tall catus. It never seems thirsty."
	icon_state   = "tall_desert"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/desert/short // Credit to Crimsonerva for complete sprite. Credit to Flashkirby for inspiration.
	name         = "potted short cactus"
	desc         = "A short catus. It always seems thirsty."
	icon_state   = "short_desert"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/desert/barrel // Credit to Crimsonerva for complete sprite.
	name         = "potted barrel cactus"
	desc         = "A barrel catus. You can never tell if it is thirsty."
	icon_state   = "barrel_desert"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/desert/aloe // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted aloe vera"
	desc         = "A potted aloe vera plant. It seems it does not have ripe enough leaves yet for harvesting. Typically great for burns, oitments, moisturizers, and tons of other usages."
	icon_state   = "aloe_desert"
	w_class      = ITEM_SIZE_LARGE

// ### ########## ###
// ### XENOFLORA ###
// ### ########## ###
/obj/item/pottedplant/xenoflora // Credit to Crimsonerva for complete sprite.
	name         = "empty extraterrestrial pot"
	desc         = "A barren pot, meant for an exotic plant."
	icon_state   = "xenoflora_pot"
	w_class      = ITEM_SIZE_NORMAL
/obj/item/pottedplant/xenoflora/crystalline // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted crystalline plant"
	desc         = "An exotic crystalline plant. This species has seems to emit a faint glow. It is typically found in rocky revines on its home planet."
	icon_state   = "crystalline_xenoflora"
	w_class      = ITEM_SIZE_LARGE
/obj/item/pottedplant/xenoflora/crystalline/Initialize()
	. = ..()
	set_light(l_range = 2, l_power = 0.5, l_color = "#4997d8")

/obj/item/pottedplant/xenoflora/bulbous // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted bulbous plant"
	desc         = "An exotic bulbous plant. This species has seems to emit a faint glow. Its buds are extremely light and float around its home planets dense atmosphere with ease, settling everywhere."
	icon_state   = "bulbous_xenoflora"
	w_class      = ITEM_SIZE_LARGE
/obj/item/pottedplant/xenoflora/bulbous/Initialize()
	. = ..()
	set_light(l_range = 2, l_power = 0.5, l_color = "#4997d8")

/obj/item/pottedplant/xenoflora/giantflower // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted giant flower"
	desc         = "An exotic giant flower. This species emits an overwhelmingly earthy scent. Its origins are unknown, but research indicates it comes from gene splicing experiments."
	icon_state   = "giant_xenoflora"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/xenoflora/sticky // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted sticky plant"
	desc         = "An exotic sticky plant. This species seems to be carnivours, devouring small creatures with its probosises across its flower."
	icon_state   = "sticky_xenoflora"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/xenoflora/pitcher // Credit to Flashkirby for original sprite. Credit to Crimsonerva for editing and corrections.
	name         = "potted alien pitcher plant"
	desc         = "An exotic pitcher plant. This species seems to be carnivours, devourign small creatures by trapping them inside its long tubes."
	icon_state   = "pitcher_xenoflora"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/xenoflora/mushroom1 // Original sprite creator unknown. Credit to Crimsonerva for editing and corrections.
	name         = "potted giant mushroom"
	desc         = "An exotic giant mushroom. This giant fungus releases so many spores, it lowers the air quality. Hold your breath."
	icon_state   = "mushroom1_xenoflora"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/xenoflora/mushroom2 // Original sprite creator unknown. Credit to Crimsonerva for editing and corrections.
	name         = "potted giant mushroom"
	desc         = "An exotic giant mushroom. This giant fungus releases so many spores, it lowers the air quality. Hold your breath. This one has a pretty purple flower."
	icon_state   = "mushroom2_xenoflora"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/xenoflora/mushroom3 // Original sprite creator unknown. Credit to Crimsonerva for editing and corrections.
	name         = "potted giant mushroom"
	desc         = "An exotic giant mushroom. This giant fungus releases so many spores, it lowers the air quality. Hold your breath. This one has a pretty orange flower."
	icon_state   = "mushroom3_xenoflora"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/xenoflora/vines1 // Original sprite creator unknown. Credit to Crimsonerva for editing and corrections.
	name         = "potted hardened vine"
	desc         = "An exotic vine. This vine has many loops and turns, and it looks very confusing to the human eye. You fail to make out what each part even does..."
	icon_state   = "vine1_xenoflora"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/xenoflora/vines2 // Original sprite creator unknown. Credit to Crimsonerva for editing and corrections.
	name         = "potted hardened vine"
	desc         = "An exotic vine. This vine has many loops and turns, and it looks very confusing to the human eye. You fail to make out what each part even does..."
	icon_state   = "vine2_xenoflora"
	w_class      = ITEM_SIZE_LARGE

/obj/item/pottedplant/xenoflora/orb // Original sprite creator unknown. Credit to Crimsonerva for editing and corrections.
	name         = "potted giant orb"
	desc         = "An exotic orb... plant. Its orb looks squishy. Best not to pop it."
	icon_state   = "orb_xenoflora"
	w_class      = ITEM_SIZE_LARGE
/obj/item/pottedplant/xenoflora/orb/Initialize()
	. = ..()
	set_light(l_range = 2, l_power = 0.5, l_color = "#d7b6ef")

// ### ########## ###
// ### FUTURISTIC ###
// ### ########## ###
/obj/item/pottedplant/futuristic // Credit to Crimsonerva for complete sprite.
	name         = "empty holographic pot"
	desc         = "A barren pot, meant for a holographic plant. It emits a blue glow from its sensors."
	icon_state   = "holographic_pot"
	w_class      = ITEM_SIZE_SMALL
/obj/item/pottedplant/futuristic/Initialize() // all holographic pots & plants should emit a glow
	. = ..()
	set_light(l_range = 2, l_power = 0.5, l_color = "#b6ebef")

/obj/item/pottedplant/futuristic/fern // Credit to Crimsonerva for complete sprite.
	name         = "holographic potted fern"
	desc         = "A holographic fern. Someone is truly trying to flaunt their wealth. It emits a blue glow from its sensors."
	icon_state   = "fern_holographic"

/obj/item/pottedplant/futuristic/tree // Credit to Crimsonerva for complete sprite.
	name         = "holographic potted tree"
	desc         = "A holographic tree. Someone is truly trying to flaunt their wealth. It emits a blue glow from its sensors."
	icon_state   = "tree_holographic"

/obj/item/pottedplant/futuristic/shrub // Credit to Crimsonerva for complete sprite.
	name         = "holographic potted shrub"
	desc         = "A holographic shrub. Someone is truly trying to flaunt their wealth. It emits a blue glow from its sensors."
	icon_state   = "shrub_holographic"

/obj/item/pottedplant/futuristic/xenoflora // Credit to Crimsonerva for complete sprite.
	name         = "holographic potted xenoflora"
	desc         = "A holographic array of xenoflora. Someone is truly trying to flaunt their wealth. It emits a blue glow from its sensors."
	icon_state   = "xenoflora_holographic"
// ### ###### ###
// ### FLORAL ###
// ### ###### ###
/obj/item/pottedplant/floral // Credit to Crimsonerva for complete sprite.
	name         = "empty flower vase"
	desc         = "A barren green vase, meant for a bunch of flowers."
	icon_state   = "steel_vase"

/obj/item/pottedplant/floral2 // Credit to Crimsonerva for complete sprite.
	name         = "empty flower vase"
	desc         = "A barren glass vase, meant for a bunch of flowers."
	icon_state   = "glass_vase"

/obj/item/pottedplant/floral/blue // Credit to Crimsonerva for complete sprite.
	name         = "vase of hydrangea"
	desc         = "A vase of blue flowers. They smell sad."
	icon_state   = "blue_steelvase"

/obj/item/pottedplant/floral/green // Credit to Crimsonerva for complete sprite.
	name         = "vase of bells-of-ireland"
	desc         = "A vase of jade flowers. They smell of wealth."
	icon_state   = "green_steelvase"

/obj/item/pottedplant/floral/purple // Credit to Crimsonerva for complete sprite.
	name         = "vase of lavender"
	desc         = "A vase of violet flowers. They smell of royalty."
	icon_state   = "purple_steelvase"

/obj/item/pottedplant/floral/yellow // Credit to Crimsonerva for complete sprite.
	name         = "vase of daisies"
	desc         = "A vase of golden flowers. They smell of childhood and joy."
	icon_state   = "yellow_steelvase"

/obj/item/pottedplant/floral/orange // Credit to Crimsonerva for complete sprite.
	name         = "vase of tulips"
	desc         = "A vase of orange flowers. They smell of optimism."
	icon_state   = "orange_steelvase"

/obj/item/pottedplant/floral/red // Credit to Crimsonerva for complete sprite.
	name         = "vase of cut roses"
	desc         = "A vase of cut roses. They remind you of someone special..."
	icon_state   = "red_steelvase"

/obj/item/pottedplant/floral2/small // Credit to Crimsonerva for complete sprite.
	name         = "vase of cut small flowers"
	desc         = "A vase of cut flowers. They sure are pretty."
	icon_state   = "small_glassvase"

/obj/item/pottedplant/floral2/large // Credit to Crimsonerva for complete sprite.
	name         = "vase of cut large flowers"
	desc         = "A vase of cut flowers. They sure are gorgeous."
	icon_state   = "large_glassvase"

/obj/item/pottedplant/floral2/daisy // Credit to Crimsonerva for complete sprite.
	name         = "vase of cut daisies"
	desc         = "A vase of cut flowers. They smell of a southern princess. If one in Sol existed. On Earth, anyways."
	icon_state   = "daisy_glassvase"

/obj/item/pottedplant/floral2/chrysanthemum // Credit to Crimsonerva for complete sprite.
	name         = "vase of cut chrysanthemum"
	desc         = "A vase of cut mums. They are down right beautiful. They might make you sneeze, though."
	icon_state   = "mums_glassvase"

/obj/item/pottedplant/floral2/rose // Credit to Crimsonerva for complete sprite.
	name         = "a cut rose"
	desc         = "A glass vase with a singular cut rose. Dedication, strength, and beauty. You know who this represents."
	icon_state   = "rose_glassvase"