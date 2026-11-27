local wanxiang = require("wanxiang/wanxiang")
local M = {}

function M.func(input, env)
    local context = env.engine.context
    local text = context.input
    if text:match("^[A-Z][A-Z]+$") and context:get_option("english") and not wanxiang.is_special_mode(context) then
        local segment = context.composition:back()
        if segment and segment.start == 0 and segment._end == #text and segment:has_tag("abc") then
            local candidate = Candidate("english", 0, #text, text, "")
            candidate.preedit = text
            yield(candidate)
        end
    end

    for candidate in input:iter() do
        yield(candidate)
    end
end

return M
