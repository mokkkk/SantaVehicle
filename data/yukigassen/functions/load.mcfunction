
# forceload
    forceload add 0 0 1 1

# プレイヤーID
    scoreboard objectives add SvPlayerId dummy
# タイマー
    scoreboard objectives add SvPlayerTimer dummy
# ニンジン棒
    scoreboard objectives add SvUsedCoas minecraft.used:carrot_on_a_stick
# 処理用
    scoreboard objectives add SvFuncCount dummy

# プレイヤーID割り当て
    execute as @a unless entity @s[scores={SvPlayerId=0..}] run function yukigassen:load_id

# 初回通知
    execute unless score $santa_vehicle_flag SvPlayerId matches 1 run tellraw @a {"text": "【SantaVehicle インストール完了】"}
    execute unless score $santa_vehicle_flag SvPlayerId matches 1 run scoreboard players set $santa_vehicle_flag SvPlayerId 1
