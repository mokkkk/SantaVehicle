
# スコア増加
    scoreboard players add @s SvFuncCount 1
# tp可能な場合は，tpする
    execute if entity @s[tag=!TpEnd] if block ^ ^ ^1 #yukigassen:no_collision positioned ^ ^ ^3 as @e[type=goat,tag=Target] run tp @s ~ ~ ~ ~ 0
    execute if entity @s[tag=!TpEnd] if block ^ ^ ^1 #yukigassen:no_collision run tag @s add TpEnd
# 角度を1°下にずらして再帰
    execute if entity @s[tag=!TpEnd] if score @s SvFuncCount matches ..90 unless block ^ ^ ^1 #yukigassen:no_collision rotated ~ ~1 run function yukigassen:minecart/move_goat_check_up
