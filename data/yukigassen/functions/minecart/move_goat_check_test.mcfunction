
    scoreboard players add @s SvFuncCount 1

    execute if entity @s[tag=!TpEnd] if block ^ ^ ^1.8 #yukigassen:no_collision run tag @s add TpEnd

    execute if entity @s[tag=!TpEnd] if score @s SvFuncCount matches ..90 unless block ^ ^ ^1.8 #yukigassen:no_collision rotated ~ ~-1 run function yukigassen:minecart/move_goat_check_test

