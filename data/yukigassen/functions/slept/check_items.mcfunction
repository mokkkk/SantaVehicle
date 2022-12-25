
# データ取り出し
    data modify storage santa_vehicle: Temp.Item set from storage santa_vehicle: Temp.Items[-1]
    data remove storage santa_vehicle: Temp.Items[-1]

# 確認
    execute if data storage santa_vehicle: Temp.Item.tag.display{Name:'{"text":"サンタさんはいます"}'} run data modify storage santa_vehicle: Temp.Flag.IsPaper set value 1b
    execute if data storage santa_vehicle: Temp.Item{id:"minecraft:diamond"} run data modify storage santa_vehicle: Temp.Flag.IsDiamond set value 1b

# アイテムを退避
    data modify storage santa_vehicle: Temp.CopiedItems append from storage santa_vehicle: Temp.Item

# チェストの中身確認
    execute if data storage santa_vehicle: Temp.Items[-1] run function yukigassen:slept/check_items
