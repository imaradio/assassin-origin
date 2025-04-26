execute store result entity @s Pos[0] double 1 run scoreboard players get @p xpos
execute store result entity @s Pos[1] double 1 run scoreboard players get @p ypos
execute store result entity @s Pos[2] double 1 run scoreboard players get @p zpos
execute store result entity @s Rotation[0] float 1 run scoreboard players get @p yaw
execute store result entity @s Rotation[1] float 1 run scoreboard players get @p pitch
tp @e[distance=0..5,type=!minecraft:item_frame,type=!minecraft:glow_item_frame] @s
kill @s
