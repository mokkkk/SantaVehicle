
# 対応するソリを消去
    scoreboard players operation $temporary_player_id SvPlayerId = @s SvPlayerId
    execute as @e[type=goat] if score @s SvPlayerId = $temporary_player_id SvPlayerId run tag @s add Target
    execute as @e[type=minecart] if score @s SvPlayerId = $temporary_player_id SvPlayerId run tag @s add Target
    tp @e[tag=Target] ~ ~-1000 ~
    kill @e[tag=Target]

# 終了
    tag @s remove SvSummoned
    tag @s remove Rided
