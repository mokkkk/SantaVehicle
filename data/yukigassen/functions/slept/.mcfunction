
# 枕もとのチェストを探索
    execute if entity @s[tag=!Checked] positioned ~1 ~ ~ if block ~ ~ ~ chest run function yukigassen:slept/check
    execute if entity @s[tag=!Checked] positioned ~ ~ ~1 if block ~ ~ ~ chest run function yukigassen:slept/check
    execute if entity @s[tag=!Checked] positioned ~-1 ~ ~ if block ~ ~ ~ chest run function yukigassen:slept/check
    execute if entity @s[tag=!Checked] positioned ~ ~ ~-1 if block ~ ~ ~ chest run function yukigassen:slept/check

# 終了
    tag @s remove Checked
    advancement revoke @s only yukigassen:slept_in_bed
