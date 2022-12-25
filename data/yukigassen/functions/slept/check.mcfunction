
# チェストの中身確認
    data modify storage santa_vehicle: Temp.Items set from block ~ ~ ~ Items
    data modify storage santa_vehicle: Temp.CopiedItems set value []
    data modify storage santa_vehicle: Temp.Flag.IsPaper set value 0b
    data modify storage santa_vehicle: Temp.Flag.IsDiamond set value 0b
    execute if data storage santa_vehicle: Temp.Items[-1] run function yukigassen:slept/check_items

# チェストの中身上書き
    data modify storage santa_vehicle: Temp.Items set from block ~ ~ ~ Items
    execute if data storage santa_vehicle: Temp.Flag{IsPaper:1b,IsDiamond:1b} run data modify storage santa_vehicle: Temp.CopiedItems set value []
    execute if data storage santa_vehicle: Temp.Flag{IsPaper:1b,IsDiamond:1b} if data storage santa_vehicle: Temp.Items[-1] run function yukigassen:slept/modify_items

# 上書き実行
    data modify block ~ ~ ~ Items set from storage santa_vehicle: Temp.CopiedItems

# 終了
    data remove storage santa_vehicle: Temp.Items
    data remove storage santa_vehicle: Temp.CopiedItems
    data remove storage santa_vehicle: Temp.Flag
    tag @s add Checked
