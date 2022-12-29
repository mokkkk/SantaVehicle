
# ソリに乗っている状態かどうか判定
    execute if predicate yukigassen:riding run tag @s add Riding

# ニンジン棒使用時，ソリ召喚
    execute if entity @s[scores={SvUsedCoas=1..}] run function yukigassen:minecart/summon_check

# ソリメイン処理
    function yukigassen:minecart/main

# 終了
    tag @s remove Riding
