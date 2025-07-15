#tellraw @a ["Enchantment found with level ",{score:{name:"@n[type=armor_stand]",objective:"enchsplit.currentEnchantLevel"}},", Adding to item ",{score:{name:"@n[type=armor_stand]",objective:"enchsplit.toggle"}}]

# Enchant the item
$execute if score @n[type=armor_stand] enchsplit.toggle matches 1 store result entity @n[tag=unench] Item.components.minecraft:enchantments.$(enchantment) int 1 run scoreboard players get @n[type=armor_stand] enchsplit.currentEnchantLevel
$execute if score @n[type=armor_stand] enchsplit.toggle matches 0 store result entity @n[tag=ench] Item.components.minecraft:enchantments.$(enchantment) int 1 run scoreboard players get @n[type=armor_stand] enchsplit.currentEnchantLevel

# Remove the enchantment from the dummy
$data remove entity @n[type=armor_stand] equipment.mainhand.components.minecraft:enchantments.$(enchantment)

# Toggle which item gets the next enchant
function enchsplit:toggle