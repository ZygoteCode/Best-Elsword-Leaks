-- Monster VAC
local BOT_LAST_POS = nil
local originalAddStartPos = CKTDGLineMap.AddStartPos
CKTDGLineMap.AddStartPos = function(self, num, pos, unkbool, unkint)

    if (nil) return originalAddStartPos(self, num, pos, unkbool, unkbool)
    -- Monster VAC
    if (not BOT_LAST_POS) or (num == 1) then
        BOT_LAST_POS = pos
    end

    return originalAddStartPos(self, num, BOT_LAST_POS, unkbool, unkint)
end