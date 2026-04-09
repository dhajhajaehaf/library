local targets = {
validateMovement = true,
validateVelocity = true,
validateCollisions = true,
check = true
}

for _, v in pairs(getgc()) do
if type(v) == "function" then
local name = debug.getinfo(v).name
if targets[name] then
hookfunction(v, function(...)
return true
end)
targets[name] = nil
end
end
end
