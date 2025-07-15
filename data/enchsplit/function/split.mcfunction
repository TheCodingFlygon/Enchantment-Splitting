#tellraw @a "| Starting enchantment split!"

# Effects are cool
execute positioned ~ ~0.75 ~ run particle gust ~ ~ ~ ~ ~ ~ 0.5 25
execute positioned ~ ~0.75 ~ run playsound item.mace.smash_ground player @a

# Identify enchanted and unenchanted item
tag @n[type=item,predicate=enchsplit:enchanted] add ench
tag @n[type=item,predicate=!enchsplit:enchanted] add unench

# Store enchantments in storage
#function enchsplit:ench_handler with entity @n[tag=ench] Item.components.minecraft:enchantments

# Store list of enchantments in duplicate item
summon armor_stand
data modify entity @n[type=armor_stand] equipment.mainhand set from entity @n[tag=ench] Item

#tellraw @a ["| Enchanted item has following enchants: ",{entity:"@n[type=armor_stand]",nbt:"equipment.mainhand.components.minecraft:enchantments"}]

# Remove enchantments from original enchanted item
data remove entity @n[tag=ench] Item.components.minecraft:enchantments

# Distribute enchantments across both items
function enchsplit:distribute

# Kill armor stand
kill @n[type=armor_stand]

# Remove item tags
tag @e remove ench
tag @e remove unench

# Kill interaction
kill @s