---Functions for recipe effects
---@class Recipe
---@field GetItemTypes table
---@field OnCanPerform table
---@field OnCreate table
---@field OnGiveXP table
---@field OnTest table
local Recipe = {
    GetItemTypes = {},
    OnCanPerform = {},
    OnCreate = {},
    OnGiveXP = {},
    OnTest = {},
}

function Recipe.OnCreate.GiveExtraItem(items, result, playerObj)
    playerObj:getInventory():AddItem(result:getFullType());
end

return Recipe