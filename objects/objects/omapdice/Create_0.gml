inst = CreateObj(oDice)
inst.pos_x = x div 64
inst.pos_y = y div 64
inst.depth = inst.pos_x - inst.pos_y * 2 - 1
instance_destroy()
