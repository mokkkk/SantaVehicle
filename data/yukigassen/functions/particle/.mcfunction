
# タイマー増加
    scoreboard players add @s SvPlayerTimer 1
    execute if score @s SvPlayerTimer matches 12.. run kill @s

# 移動・パーティクル
    particle end_rod ~ ~ ~ 0 0 0 0.05 1
    tp @s ^ ^0.4 ^1 ~16 ~
