
# 各プレイヤー実行
    execute as @a at @s run function yukigassen:tick_player

# パーティクル
    execute if entity @a[tag=SvSummoned] as @e[type=marker,tag=SvParticle] at @s run function yukigassen:particle/
