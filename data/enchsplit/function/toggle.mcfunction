# Toggle which item gets enchanted next
# 0 = originally enchanted item
# 1 = originally unenchanted item
scoreboard players add @n[type=armor_stand] enchsplit.toggle 1
scoreboard players set @n[type=armor_stand,scores={enchsplit.toggle=2}] enchsplit.toggle 0

#tellraw @a ["| Toggled item, now ",{score:{name:"@n[type=armor_stand]",objective:enchsplit.toggle}}]