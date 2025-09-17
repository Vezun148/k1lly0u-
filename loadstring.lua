local PremiumModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vezun148/k1lly0u-/refs/heads/main/prem.lua"))()

local function LoadScript(url)
    local success, scriptContent = pcall(game.HttpGet, game, url)
    if not success then
        warn("Failed to fetch script: " .. tostring(scriptContent))
        return false
    end

    local func, err = loadstring(scriptContent)
    if not func then
        warn("Failed to load script string: " .. tostring(err))
        return false
    end

    local ok, result = pcall(func)
    if not ok then
        warn("Error running loaded script: " .. tostring(result))
        return false
    end

    return true
end



