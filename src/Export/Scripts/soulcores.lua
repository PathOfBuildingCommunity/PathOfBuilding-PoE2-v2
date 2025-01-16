if not loadStatFile then
	dofile("statdesc.lua")
end
loadStatFile("stat_descriptions.csd")

function table.containsId(table, element)
  for _, value in pairs(table) do
    if value.Id == element then
      return true
    end
  end
  return false
end

local s_format = string.format

local directiveTable = { }

directiveTable.type = function(state, args, out)
	state.type = args
end

directiveTable.base = function(state, args, out)
	local baseTypeId, displayName = args:match("([%w/_]+) (.+)")
	if not baseTypeId then
		baseTypeId = args
	end
	local baseItemType = dat("BaseItemTypes"):GetRow("Id", baseTypeId)
	if not baseItemType then
		printf("Invalid Id %s", baseTypeId)
		return
	end
	if not displayName then
		displayName = baseItemType.Name
	end
	displayName = displayName:gsub("\195\182","o")
	displayName = displayName:gsub("^%s*(.-)%s*$", "%1") -- trim spaces GGG might leave in by accident
	
	-- Special handling of Runes and SoulCores
	local soulcore = dat("SoulCores"):GetRow("BaseItemTypes", baseItemType)
	if soulcore then
		local function writeStats(stats, out)
			local stats, orders = describeStats(stats)
			if #orders > 0 then
				out:write('{ ')
				out:write('type = "Rune", ')
				out:write('"'..table.concat(stats, '", "'), '", ')
				out:write('statOrder = { ', table.concat(orders, ', '), ' }, ')						
				out:write('},\n')
			end
		end
		out:write('\t["', displayName, '"] = {\n')
		-- weapons
		local stats = { }
		for i, statKey in ipairs(soulcore.StatsKeysWeapon) do
			local statValue = soulcore["StatsValuesWeapon"][i]
			stats[statKey.Id] = { min = statValue, max = statValue }
		end
		out:write("\t\tweapon = ")
		writeStats(stats, out)
		stats = { }  -- reset stats to empty
		for i, statKey in ipairs(soulcore.StatsKeysArmour) do
			local statValue = soulcore["StatsValuesArmour"][i]
			stats[statKey.Id] = { min = statValue, max = statValue }
		end
		out:write("\t\tarmour = ")
		writeStats(stats, out)

		out:write('\t},\n')
	end
end

directiveTable.baseMatch = function(state, argstr, out)
	-- Default to look at the Id column for matching
	local key = "Id"
	local args = {}
	for i in string.gmatch(argstr, "%S+") do
	   table.insert(args, i)
	end
	local value = args[1]
	-- If column name is specified, use that
	if args[2] then
		key = args[1]
		value = args[2]
	end
	for i, baseItemType in ipairs(dat("BaseItemTypes"):GetRowList(key, value, true)) do
		directiveTable.base(state, baseItemType.Id, out)
	end
end

local out = io.open("../Data/ModRunes.lua", "w")
out:write('-- This file is automatically generated, do not edit!\n')
out:write('-- Item data (c) Grinding Gear Games\n\nreturn {\n')

local state = { }
for line in io.lines("Bases/soulcore.txt") do
	local spec, args = line:match("#(%a+) ?(.*)")
	if spec then
		if directiveTable[spec] then
			directiveTable[spec](state, args, out)
		else
			printf("Unknown directive '%s'", spec)
		end
	end
end

out:write("}")
out:close()