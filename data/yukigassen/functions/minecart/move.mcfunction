
# ヤギを移動
    function yukigassen:minecart/move_goat

# プレイヤーの向いている方向に移動
    execute facing entity @e[type=goat,tag=Target,limit=1] feet positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["Motion"]}
    execute as @e[type=minecart,tag=Target] run data modify entity @s Motion set from entity @e[type=marker,tag=Motion,limit=1] Pos

# 演出
    scoreboard players add @s PlayerTimer 1
    execute if entity @s[scores={PlayerTimer=7..}] run playsound block.amethyst_block.chime master @a ~ ~ ~ 2 1.2
    execute if entity @s[scores={PlayerTimer=7..}] run playsound block.amethyst_block.chime master @a ~ ~ ~ 2 1.5
    execute if entity @s[scores={PlayerTimer=7..}] run scoreboard players set @s PlayerTimer 0
    execute if entity @s[scores={PlayerTimer=2}] at @s rotated ~ 0 run function yukigassen:minecart/move_particle
    execute if entity @s[scores={PlayerTimer=4}] at @s rotated ~ 0 run function yukigassen:minecart/move_particle
    execute if entity @s[scores={PlayerTimer=6}] at @s rotated ~ 0 run function yukigassen:minecart/move_particle
