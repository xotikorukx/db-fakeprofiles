AddEventHandler("onResourceStart", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then
        return
    end
end)

function getRandomProfiles(count)
    count = count or 1
    local idStringBase = 'id = %d'
    local idString = ""
    local ids = {}

    while count > 0 do
        ids[_getUniqueRandom(ids)] = true
        count = count - 1
    end

    local firstId = false
    for id, _ in pairs(ids) do
        if firstId then
            idString = idString .. idStringBase:format(id)
            firstId = false
        else
            idString = idString .. " OR " .. idStringBase:format(id)
        end
    end

    return MySQL.Sync.fetchAll('SELECT * FROM `db_fakeprofiles` WHERE '..idString, {})
end
exports('getRandomProfiles', getRandomProfiles)

function getRandomProfile()
    return MySQL.Sync.fetchAll('SELECT * FROM `db_fakeprofiles` WHERE id = '..math.random(1, 100000), {})[1]
end
exports('getRandomProfile', getRandomProfile)

function _getUniqueRandom(selectedRandoms)
    local rand = 0
    while true do
        rand = math.random(1, 100000)
        if not selectedRandoms[rand] then
            break
        end
    end
    
    return rand
end