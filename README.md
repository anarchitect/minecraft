# Death Afflictions Datapack

This datapack targets Minecraft Java Edition 1.21.10 and applies **Poison** and **Hunger** to every player immediately after they respawn from a death. It works entirely with vanilla commands via scheduled functions.

## How it works
- A scoreboard tracks each player's total deaths (`death_count`).
- On every tick, the datapack compares the current total to the last handled value and runs a handler when the number increases.
- The handler waits until the player is alive again (after respawn) and gives 10 seconds of Poison and 15 seconds of Hunger.

## Installation
1. Copy the contents of this repository into a folder inside your world's `datapacks/` directory (e.g., `<world>/datapacks/death_afflictions/`).
2. Start or reload the world with `/reload` to run the setup function.
3. Verify the objectives exist with `/scoreboard objectives list` (they are created automatically on load).

## Customization
Adjust the effect durations or levels in `data/death_afflictions/functions/player/handle_death.mcfunction` if you want different penalties.
