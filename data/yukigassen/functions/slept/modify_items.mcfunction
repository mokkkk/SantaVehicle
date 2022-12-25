
# 初期化
    data modify storage santa_vehicle: Temp.Flag.IsPaperTemp set value 0b
    data modify storage santa_vehicle: Temp.Flag.IsDiamondTemp set value 0b

# データ取り出し
    data modify storage santa_vehicle: Temp.Item set from storage santa_vehicle: Temp.Items[-1]
    data remove storage santa_vehicle: Temp.Items[-1]

# 確認
    execute if data storage santa_vehicle: Temp.Item.tag.display{Name:'{"text":"サンタさんはいます"}'} run data modify storage santa_vehicle: Temp.Flag.IsPaperTemp set value 1b
    execute if data storage santa_vehicle: Temp.Item{id:"minecraft:diamond"} run data modify storage santa_vehicle: Temp.Flag.IsDiamondTemp set value 1b

# 紙の部分に鈴を入れる
    execute if data storage santa_vehicle: Temp.Flag{IsPaper:1b,IsPaperTemp:1b} run function yukigassen:slept/modify_items_bell

# 関係ないアイテムを退避
    execute if data storage santa_vehicle: Temp.Flag{IsPaperTemp:0b,IsDiamondTemp:0b} run data modify storage santa_vehicle: Temp.CopiedItems append from storage santa_vehicle: Temp.Item

# チェストの中身確認
    execute if data storage santa_vehicle: Temp.Items[-1] run function yukigassen:slept/modify_items
