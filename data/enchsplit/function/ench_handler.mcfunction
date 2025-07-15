#$tellraw @a "| Running enchantment handler for [$(enchantment)]..."

# Reset scoreboard from prior enchants
scoreboard objectives add enchsplit.currentEnchantLevel dummy
scoreboard players set @n[type=armor_stand] enchsplit.currentEnchantLevel 0

# Get current enchantment level
$execute store result score @n[type=armor_stand] enchsplit.currentEnchantLevel run data get entity @n[type=armor_stand] equipment.mainhand.components.minecraft:enchantments.$(enchantment)

# If enchantment is present (level = 1..), add enchantment to item
$execute if score @n[type=armor_stand] enchsplit.currentEnchantLevel matches 1.. run function enchsplit:add_enchant {enchantment:"$(enchantment)"}