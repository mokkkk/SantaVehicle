
# すでにあるソリを消去
    scoreboard players operation $temporary_player_id SvPlayerId = @s SvPlayerId
    execute as @e[type=goat] if score @s SvPlayerId = $temporary_player_id SvPlayerId run tag @s add Target
    execute as @e[type=minecart] if score @s SvPlayerId = $temporary_player_id SvPlayerId run tag @s add Target
    tp @e[tag=Target] ~ ~-1000 ~
    kill @e[tag=Target]

# 自分のIDを持ったそりを召喚
    execute at @s anchored eyes positioned ^ ^ ^1 rotated ~ 0 run summon goat ^ ^ ^2.8 {Tags:["Start"],NoGravity:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
    execute at @s anchored eyes positioned ^ ^ ^2 rotated ~ 0 run summon minecart ^ ^ ^ {Tags:["Start"],NoGravity:1b,Silent:1b}
    execute rotated ~ 0 positioned ^ ^1 ^2 run function yukigassen:minecart/summon_particle
    scoreboard players operation @e[type=goat,tag=Start] SvPlayerId = @s SvPlayerId
    scoreboard players operation @e[type=minecart,tag=Start] SvPlayerId = @s SvPlayerId
# ヤギとリードをつなぐ
    execute as @e[type=goat,tag=Start] run data modify entity @s Leash.UUID set from entity @e[type=minecart,tag=Start,limit=1] UUID
    tag @e[tag=Start] remove Start

# 終了
    scoreboard players set @s SvPlayerTimer 0
    tag @s add SvSummoned
    tp @s @s

