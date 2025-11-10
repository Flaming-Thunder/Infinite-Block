$execute unless entity @s[nbt={data:{Data:{RightClick_InteractionName:""}}}] if entity @s[nbt={interaction:{}}] run function game:system/$(RightClick_InteractionName)
$execute unless entity @s[nbt={data:{Data:{LeftClick_InteractionName:""}}}] if entity @s[nbt={attack:{}}] run function game:system/$(LeftClick_InteractionName)
data remove entity @s interaction
data remove entity @s attack