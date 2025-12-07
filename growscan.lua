function growScan(itemID)
    return (getBot():getWorld().growscan:getObjects()[itemID]) or 0
end
function extracts(varlist, netid)
    if varlist:get(0):getString() == "OnConsoleMessage" then
        local message = varlist:get(1):getString()
        local number = message:match("!find%s*(%d+)")
        if number then
            print(number)
            itemId = tonumber(number)
            itemName = getInfo(itemId).name
            print(itemName)
            getBot():say(itemName.. " count is : " .. growScan(itemId))
            sleep(15000)
        end
    end
end
addEvent(Event.variantlist, extracts)
listenEvents(99999999)
