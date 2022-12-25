
# データ書き換え
    data modify storage santa_vehicle: Temp.Item.id set value "minecraft:carrot_on_a_stick"
    data modify storage santa_vehicle: Temp.Item.Count set value 1b
    data modify storage santa_vehicle: Temp.Item.tag set value {display:{Name:'{"text":"サンタの呼び鈴","italic":false}',Lore:['{"text":"サンタさんの乗り物を呼び出す鈴．","italic":false}']},HideFlags:4,Unbreakable:1b,CustomModelData:1226,SantaVehicle:1b,Enchantments:[{}]}

# 終了
    data modify storage santa_vehicle: Temp.Flag.IsPaper set value 0b
    data modify storage santa_vehicle: Temp.Flag.IsPaperTemp set value 0b
    data modify storage santa_vehicle: Temp.Flag.IsDiamondTemp set value 0b
