
# 演出
    particle firework ~ ~ ~ 0 0 0 1 30
    particle flash ~ ~ ~ 0.1 0.1 0.1 0 30
    playsound block.amethyst_block.chime master @a ~ ~ ~ 3 0.7
    playsound block.amethyst_block.chime master @a ~ ~ ~ 3 0.7
    playsound block.amethyst_block.chime master @a ~ ~ ~ 3 0.9
    playsound block.amethyst_block.chime master @a ~ ~ ~ 3 0.9

    summon marker ~ ~ ~ {Tags:["SvParticle","Start","A"]}
    summon marker ~ ~ ~ {Tags:["SvParticle","Start","B"]}
    summon marker ~ ~ ~ {Tags:["SvParticle","Start","C"]}
    summon marker ~ ~ ~ {Tags:["SvParticle","Start","D"]}
    tp @e[type=marker,tag=SvParticle,tag=Start,tag=A] ~ ~1 ~ ~90 ~
    tp @e[type=marker,tag=SvParticle,tag=Start,tag=B] ~ ~1 ~ ~-90 ~
    tp @e[type=marker,tag=SvParticle,tag=Start,tag=C] ~ ~1 ~ ~180 ~20
    tp @e[type=marker,tag=SvParticle,tag=Start,tag=D] ~ ~1 ~ ~ ~20
    tag @e[type=marker,tag=SvParticle,tag=Start] remove Start
