execute as @e[type=item,predicate=enchsplit:enchanted] at @s if block ~ ~ ~ minecraft:enchanting_table if entity @e[type=item,predicate=!enchsplit:enchanted,distance=..1] unless entity @n[type=interaction,tag=enchsplit,distance=..1] positioned ~ ~ ~ align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:["enchsplit"]}

execute as @e[type=interaction,tag=enchsplit,predicate=enchsplit:int_attack] at @s if entity @e[type=item,predicate=enchsplit:enchanted,distance=..1] if entity @e[type=item,predicate=!enchsplit:enchanted,distance=..1] if entity @a[predicate=enchsplit:mace,distance=..5] run function enchsplit:split

execute as @e[type=interaction,tag=enchsplit] at @s unless entity @n[type=item,predicate=enchsplit:enchanted,distance=..1] run kill @s