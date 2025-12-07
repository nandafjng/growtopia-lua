for _, item in pairs(getBot():getInventory().items) do 
    getBot():trash(item.id, getBot():getInventory():getItemCount(item.id)
    sleep(2000)
end
