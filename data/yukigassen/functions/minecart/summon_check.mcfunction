
# メインハンドを確認
    data modify storage santa_vehicle: Temp.Mainhand set from entity @s SelectedItem
    execute if entity @s[tag=!Rided] if data storage santa_vehicle: Temp.Mainhand.tag{SantaVehicle:1b} run function yukigassen:minecart/summon
    data remove storage santa_vehicle: Temp.Mainhand

# 終了
    scoreboard players set @s SvUsedCoas 0
