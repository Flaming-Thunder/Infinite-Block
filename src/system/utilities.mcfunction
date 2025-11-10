execute as @e[type=interaction] at @s run function game:system/utilities/click_call with entity @s data.Data
/click_call
  $execute unless entity @s[nbt={data:{Data:{RightClick_InteractionName:""}}}] if entity @s[nbt={interaction:{}}] run function game:system/$(RightClick_InteractionName)
  $execute unless entity @s[nbt={data:{Data:{LeftClick_InteractionName:""}}}] if entity @s[nbt={attack:{}}] run function game:system/$(LeftClick_InteractionName)
  data remove entity @s interaction
  data remove entity @s attack