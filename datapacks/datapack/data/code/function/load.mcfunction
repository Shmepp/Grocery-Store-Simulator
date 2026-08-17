gamerule spawn_mobs false
gamerule mob_griefing false
gamerule fire_spread_radius_around_player 0
gamerule immediate_respawn true
gamerule locator_bar false

scoreboard objectives add player.death deathCount
scoreboard objectives add player.left custom:leave_game
scoreboard objectives add player.id dummy
scoreboard objectives add instance.id dummy
scoreboard objectives add instance.store_open dummy
scoreboard objectives add math dummy
scoreboard objectives add ai.id dummy
execute unless entity @e[scores={ai.id=1..}] run scoreboard players set .max ai.id 0

forceload add 0 0

tellraw @a { "color": "#00FF00", "text": "The Code is Load"}