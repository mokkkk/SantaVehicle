
# 正面が地面じゃなければその位置
    execute positioned ^ ^ ^1 if block ~ ~ ~ #yukigassen:no_collision at @s positioned ^ ^ ^1.8 as @e[type=goat,tag=Target] run tp @s ~ ~ ~ ~ 0

# 正面が地面の場合は，上下に角度をずらす
    execute positioned ^ ^ ^1 unless block ~ ~ ~ #yukigassen:no_collision at @s run function yukigassen:minecart/move_goat_check
