# death_delta = current death count - last handled death count
scoreboard players operation @s death_delta = @s death_count
scoreboard players operation @s death_delta -= @s death_handled

# If at least one new death has been recorded, apply the post-respawn penalties.
execute if score @s death_delta matches 1.. run function death_afflictions:player/handle_death

# Update the handled death count to the current total.
scoreboard players operation @s death_handled = @s death_count
