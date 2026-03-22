local funcsToHook = {
    "validateMovement",
    "validateVelocity",
    "validateCollisions"
}

for _, v in pairs(getgc(true)) do
    if typeof(v) == "function" then
        local info = debug.getinfo(v)
        if info.name and table.find(funcsToHook, info.name) then
            hookfunction(v, function(...) 
                return true 
            end)
        end
    end
end
