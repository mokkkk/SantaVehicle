
# タイマー増加
    scoreboard players add @s SvPlayerTimer 1

# 一定時間後，そりを消す
    execute if score @s SvPlayerTimer matches 100.. run function yukigassen:minecart/timer_up
