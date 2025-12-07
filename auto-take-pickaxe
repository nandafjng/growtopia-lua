pickaxeWorld = 'pickaxeworld'
pickaxeWorldId = 'theid'
function takePickaxe()
    while not bot:isInWorld(pickaxeWorld) do
        bot:warp(pickaxeWorld, pickaxeWorldId)
        sleep(10000)
    end

    if bot:isInWorld(pickaxeWorld) then
        for _, obj in pairs(bot:getWorld():getObjects()) do
            if obj.id == 'pickaxeid' then
                bot.auto_collect = true
                bot:findPath(math.floor(obj.x / 32), math.floor(obj.y / 32))
                bot:sleep(1000)
                bot:moveRight() -- do ur logic if u want the bot to move elsewhere to drop
                bot:setDirection(true)
                sleep(500)
                while bot:getInventory():getItemCount('pickaxeid') > 1 do
                    bot.auto_collect = false
                    bot:drop('pickaxeid', bot:getInventory():getItemCount('pickaxeid') - 1)
                    sleep(1000)
                end
            end
        end
    end
end

sleep(getBot().index * 20000) -- assuming each bot requires 20seconds to take pickaxe
takePickaxe()
