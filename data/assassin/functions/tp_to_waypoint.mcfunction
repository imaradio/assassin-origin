
# overworld -> overworld
execute if dimension minecraft:overworld if score @p dimension matches 0 store result entity @s Pos[0] double 1 run scoreboard players get @p xpos
execute if dimension minecraft:overworld if score @p dimension matches 0 store result entity @s Pos[1] double 1 run scoreboard players get @p ypos
execute if dimension minecraft:overworld if score @p dimension matches 0 store result entity @s Pos[2] double 1 run scoreboard players get @p zpos

# overworld -> nether
execute if dimension minecraft:overworld if score @p dimension matches 1 store result entity @s Pos[0] double 8 run scoreboard players get @p xpos
execute if dimension minecraft:overworld if score @p dimension matches 1 store result entity @s Pos[1] double 1 run scoreboard players get @p ypos
execute if dimension minecraft:overworld if score @p dimension matches 1 store result entity @s Pos[2] double 8 run scoreboard players get @p zpos

# overworld -> end
execute if dimension minecraft:overworld if score @p dimension matches 2 store result entity @s Pos[0] double 1 run scoreboard players get @p xpos
execute if dimension minecraft:overworld if score @p dimension matches 2 store result entity @s Pos[1] double 1 run scoreboard players get @p ypos
execute if dimension minecraft:overworld if score @p dimension matches 2 store result entity @s Pos[2] double 1 run scoreboard players get @p zpos


# nether -> overworld
execute if dimension minecraft:the_nether if score @p dimension matches 0 store result entity @s Pos[0] double 0.125 run scoreboard players get @p xpos
execute if dimension minecraft:the_nether if score @p dimension matches 0 store result entity @s Pos[1] double 1 run scoreboard players get @p ypos
execute if dimension minecraft:the_nether if score @p dimension matches 0 store result entity @s Pos[2] double 0.125 run scoreboard players get @p zpos

# nether -> nether
execute if dimension minecraft:the_nether if score @p dimension matches 1 store result entity @s Pos[0] double 1 run scoreboard players get @p xpos
execute if dimension minecraft:the_nether if score @p dimension matches 1 store result entity @s Pos[1] double 1 run scoreboard players get @p ypos
execute if dimension minecraft:the_nether if score @p dimension matches 1 store result entity @s Pos[2] double 1 run scoreboard players get @p zpos

# nether -> end
execute if dimension minecraft:the_nether if score @p dimension matches 2 store result entity @s Pos[0] double 0.125 run scoreboard players get @p xpos
execute if dimension minecraft:the_nether if score @p dimension matches 2 store result entity @s Pos[1] double 1 run scoreboard players get @p ypos
execute if dimension minecraft:the_nether if score @p dimension matches 2 store result entity @s Pos[2] double 0.125 run scoreboard players get @p zpos


# end -> overworld
execute if dimension minecraft:the_end if score @p dimension matches 0 store result entity @s Pos[0] double 1 run scoreboard players get @p xpos
execute if dimension minecraft:the_end if score @p dimension matches 0 store result entity @s Pos[1] double 1 run scoreboard players get @p ypos
execute if dimension minecraft:the_end if score @p dimension matches 0 store result entity @s Pos[2] double 1 run scoreboard players get @p zpos

# end -> nether
execute if dimension minecraft:the_end if score @p dimension matches 1 store result entity @s Pos[0] double 8 run scoreboard players get @p xpos
execute if dimension minecraft:the_end if score @p dimension matches 1 store result entity @s Pos[1] double 1 run scoreboard players get @p ypos
execute if dimension minecraft:the_end if score @p dimension matches 1 store result entity @s Pos[2] double 8 run scoreboard players get @p zpos

# end -> end
execute if dimension minecraft:the_end if score @p dimension matches 2 store result entity @s Pos[0] double 1 run scoreboard players get @p xpos
execute if dimension minecraft:the_end if score @p dimension matches 2 store result entity @s Pos[1] double 1 run scoreboard players get @p ypos
execute if dimension minecraft:the_end if score @p dimension matches 2 store result entity @s Pos[2] double 1 run scoreboard players get @p zpos


# rotation
execute store result entity @s Rotation[0] float 1 run scoreboard players get @p yaw
execute store result entity @s Rotation[1] float 1 run scoreboard players get @p pitch


# tag everything, tp tagged to self (for rotation), tp tagged to position, remove tags, and kill self
tag @e[distance=0..5,type=!minecraft:item_frame,type=!minecraft:glow_item_frame] add AssassinWaypointToTP
tp @e[tag=AssassinWaypointToTP] @s
execute if score @p dimension matches 0 positioned as @s in minecraft:overworld run tp @e[tag=AssassinWaypointToTP] ~ ~ ~
execute if score @p dimension matches 1 positioned as @s in minecraft:the_nether run tp @e[tag=AssassinWaypointToTP] ~ ~ ~
execute if score @p dimension matches 2 positioned as @s in minecraft:the_end run tp @e[tag=AssassinWaypointToTP] ~ ~ ~
tag @e[tag=AssassinWaypointToTP] remove AssassinWaypointToTP
kill @s

