
# IDから対応するソリを特定
    scoreboard players operation $temporary_player_id SvPlayerId = @s SvPlayerId
    execute as @e[type=goat] if score @s SvPlayerId = $temporary_player_id SvPlayerId run tag @s add Target
    execute as @e[type=minecart] if score @s SvPlayerId = $temporary_player_id SvPlayerId run tag @s add Target

# トロッコが破壊されたとき（実行しない）
    # execute if entity @s[tag=Rided] unless entity @e[type=minecart,tag=Target] run function yukigassen:minecart/kill
    
# しばらく乗らなかったとき，ソリを消去
    execute if entity @s[tag=SvSummoned,tag=!Rided] run function yukigassen:minecart/timer

# 騎乗開始時実行
    execute if entity @s[tag=!Rided,tag=Riding] run function yukigassen:minecart/start_ride

# 騎乗終了時実行
    execute if entity @s[tag=Rided,tag=!Riding] run function yukigassen:minecart/end_ride

# プレイヤーの向いている方向に移動
    execute if entity @s[tag=Riding] run function yukigassen:minecart/move

# 終了
    kill @e[type=marker,tag=Motion]
    scoreboard players reset $temporary_player_id SvPlayerId
    tag @e[tag=Target] remove Target
