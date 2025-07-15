# Enchantment Splitting

Split enchantments across items

## How to use (in-game)

1. Drop an enchanted item and an unenchanted item onto an enchanting table
2. Hit the items with a mace
3. That's it! The enchantments will be evenly distributed across both items.

## How it works

An interaction entity is spawned whenever an enchanted and unenchanted item are on top of an enchanting table at the same time. The instant it is hit, the game checks to see if a nearby player is holding a mace, and if so, it begins the enchantment splitting process.
- The originally enchanted item will be referred to as item 0.
- The originally unenchanted item will be referred to as item 1.

### Enchantment Splitting Process

1. Identify each item as item 0 and item 1, and tag them accordingly. This is to simplify identifying them in future commands.
2. Summon an armor stand and clone item 0 to its mainhand. This armor stand is used as an enchantment list, and will be destroyed as soon as the splitting process is over.
3. Remove all enchantments from item 0.
4. Initiate a scoreboard toggle that decides which item receives the next enchantment. This always begins with item 1.
5. Begin distributing.
6. After distribution is complete, kill the armor stand and interaction entity, and remove tags from the items involved.

### Distribution

- A registry has been made containing all vanilla enchantments.
- For each enchantment in the registry, a function is run storing its value as a score on the armor stand. If the score is greater than 0, the enchantment is present on the enchantment list.
- If an enchantment is present, a function is run to copy the enchantment's value to the item, remove it from the enchantment list, and toggle which item gets the next enchantment.
- Once all enchantments in the registry have been checked, all remaining enchantments on the enchantment list are merged to item 1.

All of this happens within a single game tick.

## Quick Answers

### What happens if I "split" an item with only one enchantment?
The enchantment is moved from item 0 to item 1.

### Can I split enchantments across different items (e.g. splitting multiple sword enchantments across a Diamond Sword and Netherite Sword)?
Yes.

### Can I split enchantments onto items that can't have certain enchantments (e.g. splitting Infinity onto a Crossbow)?
Yes.

### Can I split enchantments onto items that can't normally be enchanted (e.g. splitting Knockback onto a Stick)?
Yes.