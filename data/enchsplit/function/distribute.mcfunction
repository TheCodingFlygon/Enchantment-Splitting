#tellraw @a "| Distributing..."

# Alternate which item gets the enchantment
function enchsplit:toggle

# Run checks for each item
function enchsplit:ench_handler {enchantment:"minecraft:binding_curse"}
function enchsplit:ench_handler {enchantment:"minecraft:vanishing_curse"}
function enchsplit:ench_handler {enchantment:"minecraft:riptide"}
function enchsplit:ench_handler {enchantment:"minecraft:channeling"}
function enchsplit:ench_handler {enchantment:"minecraft:wind_burst"}
function enchsplit:ench_handler {enchantment:"minecraft:frost_walker"}
function enchsplit:ench_handler {enchantment:"minecraft:sharpness"}
function enchsplit:ench_handler {enchantment:"minecraft:smite"}
function enchsplit:ench_handler {enchantment:"minecraft:bane_of_arthropods"}
function enchsplit:ench_handler {enchantment:"minecraft:impaling"}
function enchsplit:ench_handler {enchantment:"minecraft:power"}
function enchsplit:ench_handler {enchantment:"minecraft:density"}
function enchsplit:ench_handler {enchantment:"minecraft:breach"}
function enchsplit:ench_handler {enchantment:"minecraft:piercing"}
function enchsplit:ench_handler {enchantment:"minecraft:sweeping_edge"}
function enchsplit:ench_handler {enchantment:"minecraft:multishot"}
function enchsplit:ench_handler {enchantment:"minecraft:fire_aspect"}
function enchsplit:ench_handler {enchantment:"minecraft:flame"}
function enchsplit:ench_handler {enchantment:"minecraft:knockback"}
function enchsplit:ench_handler {enchantment:"minecraft:punch"}
function enchsplit:ench_handler {enchantment:"minecraft:protection"}
function enchsplit:ench_handler {enchantment:"minecraft:blast_protection"}
function enchsplit:ench_handler {enchantment:"minecraft:fire_protection"}
function enchsplit:ench_handler {enchantment:"minecraft:projectile_protection"}
function enchsplit:ench_handler {enchantment:"minecraft:feather_falling"}
function enchsplit:ench_handler {enchantment:"minecraft:fortune"}
function enchsplit:ench_handler {enchantment:"minecraft:looting"}
function enchsplit:ench_handler {enchantment:"minecraft:silk_touch"}
function enchsplit:ench_handler {enchantment:"minecraft:luck_of_the_sea"}
function enchsplit:ench_handler {enchantment:"minecraft:efficiency"}
function enchsplit:ench_handler {enchantment:"minecraft:quick_charge"}
function enchsplit:ench_handler {enchantment:"minecraft:lure"}
function enchsplit:ench_handler {enchantment:"minecraft:respiration"}
function enchsplit:ench_handler {enchantment:"minecraft:aqua_affinity"}
function enchsplit:ench_handler {enchantment:"minecraft:soul_speed"}
function enchsplit:ench_handler {enchantment:"minecraft:swift_sneak"}
function enchsplit:ench_handler {enchantment:"minecraft:depth_strider"}
function enchsplit:ench_handler {enchantment:"minecraft:thorns"}
function enchsplit:ench_handler {enchantment:"minecraft:loyalty"}
function enchsplit:ench_handler {enchantment:"minecraft:unbreaking"}
function enchsplit:ench_handler {enchantment:"minecraft:infinity"}
function enchsplit:ench_handler {enchantment:"minecraft:mending"}

#execute if data entity @n[type=armor_stand] equipment.mainhand.components.minecraft:enchantments run tellraw @a ["| Leftover enchantments: ",{entity:"@n[type=armor_stand]",nbt:"equipment.mainhand.components.minecraft:enchantments"}," moving to item 1"]

# All non-vanilla enchantments get moved to item 1
data modify entity @n[tag=unench] Item.components.minecraft:enchantments merge from entity @n[type=armor_stand] equipment.mainhand.components.minecraft:enchantments

# Remove the enchantment from the armor stand
#data remove entity @n[type=armor_stand] equipment.mainhand.components.minecraft:enchantments
#execute if entity @n[type=armor_stand,predicate=enchsplit:continue_splitting] run tellraw @a "| Moving remaining enchantments to item 1"

#function enchsplit:distribute