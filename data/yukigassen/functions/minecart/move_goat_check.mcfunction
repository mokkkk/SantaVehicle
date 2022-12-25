
# 初期化
    execute store result score @s SvFuncCount run data get entity @s Rotation[1] 1

# 上下判定
    execute as @p facing entity @e[type=goat,tag=Target,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^ ^4.0 ^ if entity @s[distance=..5.0] run tag @s add IsUp

# ヤギが上にいる場合，角度を下にずらす
    execute if entity @s[tag=IsUp] run function yukigassen:minecart/move_goat_check_up
# ヤギが下にいる場合，角度を上にずらす
    execute if entity @s[tag=!IsUp] run function yukigassen:minecart/move_goat_check_down

# 終了
    scoreboard players reset @s SvFuncCount
    tag @s remove TpEnd
    tag @s remove IsUp
