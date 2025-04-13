setmetatable(getgenv(), {
    __index = function(_, k)
        if typeof(k) == "string" and k:lower() == "identifyexecutor" then
            return function()
                return "crystalapi"
            end
        end
    end,
    __newindex = function(_, k, v)
        if typeof(k) == "string" and k:lower() == "identifyexecutor" then
            rawset(getgenv(), k, function()
                return "crystalapi"
            end)
        else
            rawset(getgenv(), k, v)
        end
    end
})
