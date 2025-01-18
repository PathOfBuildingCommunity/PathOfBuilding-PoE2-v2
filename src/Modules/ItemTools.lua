-- Path of Building
--
-- Module: Item Tools
-- Various functions for dealing with items.
--
local t_insert = table.insert
local t_remove = table.remove
local m_min = math.min
local m_max = math.max
local m_floor = math.floor

itemLib = { }
-- Apply a value scalar to the first n of any numbers present
function itemLib.applyValueScalar(line, valueScalar, baseValueScalar, numbers, precision)
	if not (valueScalar and type(valueScalar) == "number") then
		valueScalar = 1
	end
	if valueScalar ~= 1 or (baseValueScalar and baseValueScalar ~= 1) then
		if precision then
			return line:gsub("(%d+%.?%d*)", function(num)
				local power = 10 ^ precision
				local numVal = tonumber(num)
				if baseValueScalar then
					numVal = round(numVal * baseValueScalar * power) / power
				end
				numVal = m_floor(numVal * valueScalar * power) / power
				return tostring(numVal)
			end, numbers)
		else
			return line:gsub("(%d+)([^%.])", function(num, suffix)
				local numVal = tonumber(num)
				if baseValueScalar then
					numVal = round(num * baseValueScalar)
				end
				numVal = m_floor(numVal * valueScalar + 0.001)
				return tostring(numVal)..suffix
			end, numbers)
		end
	end
	return line
end

-- precision is express a multiplier/divide and displayPrecision is expresed as decimal precision on rounding.
-- ifRequired determines whether trailing zeros are displayed or not.
function itemLib.formatValue(value, baseValueScalar, valueScalar, precision, displayPrecision, ifRequired)
	value = roundSymmetric(value * precision) -- resolve range to internal value
	if baseValueScalar and baseValueScalar ~= 1 then value = alwaysPositveRound(value * baseValueScalar) end -- apply corrupted mult
	if valueScalar and valueScalar ~= 1 then value = floorSymmetric(value * valueScalar) end -- apply modifier magnitude
	value = value / precision -- convert back to display space
	if displayPrecision then value = roundSymmetric(value, displayPrecision) end -- presentation
	if displayPrecision and not ifRequired then -- whitespace is needed
		return string.format("%"..displayPrecision.."f", value)
	elseif displayPrecision then
		return tostring(roundSymmetric(value, displayPrecision))
	else
		return tostring(roundSymmetric(value,  precision and m_min(2, m_floor(math.log(precision, 10))) or 2)) -- max decimals ingame is 2 
	end
end

local antonyms = {
	["increased"] = "reduced",
	["reduced"] = "increased",
	["more"] = "less",
	["less"] = "more",
}

local function antonymFunc(num, word)
	local antonym = antonyms[word]
	return antonym and (num.." "..antonym) or ("-"..num.." "..word)
end

-- Apply range value (0 to 1) to a modifier that has a range: "(x-x)" or "(x-x) to (x-x)"
function itemLib.applyRange(line, range, valueScalar, baseValueScalar)
	-- stripLines down to # inplace of any number and store numbers inside values also remove all + signs are kept if value is positive
	local values = { }
	local strippedLine = line:gsub("([%+-]?)%((%-?%d+%.?%d*)%-(%-?%d+%.?%d*)%)", function(sign, min, max)
		local value = min + range * (tonumber(max) - min)
		if sign == "-" then value = value * -1 end
		return (sign == "+" and value > 0 ) and sign..tostring(value) or tostring(value)
	end)
	:gsub("%-(%d+%.?%d*%%) (%a+)", antonymFunc)
	:gsub("(%-?%d+%.?%d*)", function(value)
		t_insert(values, value)
		return "#"
	end)

	--- Takes a completely strippedLine where all values and ranges are replaced with a # + signs are kept for consistency upon resubsitution.
	--- This will then subsitute back in the values until a line in scalabilityData is found this start with subsituting everything and until none.
	--- This means if there is a more generic mod that might be scalable on both parameters but their is a narrower one that isn't it won't be scaled.
	---@param line the modLine stripped of all values and ranges replaced by #
	---@param values all values present in the modLine
	---@return scalableLine line with only scalableValues replaced with #
	---@return scalableValues values which can be scaled and added into scalableLine in place of a #
	local function findScalableLine(line, values)
		local function replaceNthInstance(input, pattern, replacement, n)
			local count = 0
			return input:gsub(pattern, function(match)
				count = count + 1
				if count == n then
					return replacement
				else
					return match
				end
			end)
		end

		-- check combinations recursively largest to smallest
		local function checkSubsitutionCombinations(i, numSubsitutions, indices)
			if #indices == numSubsitutions then
				local modifiedLine = line
				local subsituted = 0
				for _, i in ipairs(indices) do
					modifiedLine = replaceNthInstance(modifiedLine, "#", values[i], i - subsituted)
					subsituted = subsituted + 1
				end
	
				-- Check if the modified line matches any scalability data
				local key = modifiedLine:gsub("+#", "#")
				if data.modScalability[key] then
					-- Return modified line and remaining values (those not substituted)
					local remainingValues = {}
					local used = { }
					for _, index in ipairs(indices) do
						used[index] = true
					end
					for i, value in ipairs(values) do
						if not used[i] then
							table.insert(remainingValues, value)
						end
					end
					return modifiedLine, remainingValues
				end
				return
			end
			for j = i, #values do
				table.insert(indices, j)
				local modifiedLine, remainingValues = checkSubsitutionCombinations(j + 1, numSubsitutions, indices)
				if modifiedLine then
					return modifiedLine, remainingValues
				end
				table.remove(indices)
			end
		end

		for i = #values, 1, -1 do
			local modifiedLine, remainingValues = checkSubsitutionCombinations(1, i, {})
			if modifiedLine then
				return modifiedLine, remainingValues
			end
		end

		-- Check scalability with 0 substitutions
		local key = line:gsub("+#", "#")
		if data.modScalability[key] then
			return line, values
		end

		return
	end

	local scalableLine, scalableValues = findScalableLine(strippedLine, values)

	if scalableLine then -- found scalability data
		for i, scalability in ipairs(data.modScalability[scalableLine:gsub("+#", "#")]) do
			local precision
			local displayPrecision
			local ifRequired
			if scalability.formats then
				for _, format in ipairs(scalability.formats) do
					if format == "divide_by_two_0dp" then
						precision = 2
						displayPrecision = 0
						ifRequired = true
					elseif format == "divide_by_three" then
						precision = 3
					elseif format == "divide_by_four" then
						precision = 4
					elseif format == "divide_by_five" then
						precision = 5
					elseif format == "divide_by_six" then
						precision = 6
					elseif format == "divide_by_ten_0dp" then
						precision = 10
						displayPrecision = 0
					elseif format == "divide_by_ten_1dp" then
						precision = 10
						displayPrecision = 1
					elseif format == "divide_by_ten_1dp_if_required" then
						precision = 10
						displayPrecision = 1
						ifRequired = true
					elseif format == "divide_by_twelve" then
						precision = 12
					elseif format == "divide_by_fifteen_0dp" then
						precision = 15
						displayPrecision = 0
					elseif format == "divide_by_twenty" then
						precision = 20
					elseif format == "divide_by_twenty_then_double_0dp" then -- might be incorrect?
						precision = 10
						displayPrecision = 0
					elseif format == "divide_by_one_hundred" or format == "divide_by_one_hundred_and_negate" then
						precision = 100
					elseif format == "divide_by_one_hundred_0dp" then
						precision = 100
						displayPrecision = 0
					elseif format == "divide_by_one_hundred_1dp" then
						precision = 100
						displayPrecision = 1
					elseif format == "divide_by_one_hundred_2dp" then
						precision = 100
						displayPrecision = 2
					elseif format == "divide_by_one_hundred_2dp_if_required" then
						precision = 100
						displayPrecision = 2
						ifRequired = true
					elseif format == "divide_by_one_thousand" then
						precision = 1000
					elseif format == "per_minute_to_per_second" then
						precision = 60
					elseif format == "per_minute_to_per_second_0dp" then
						precision = 60
						displayPrecision = 0
					elseif format == "per_minute_to_per_second_1dp" then
						precision = 60
						displayPrecision = 1
					elseif format == "per_minute_to_per_second_2dp" then
						precision = 60
						displayPrecision = 2
					elseif format == "per_minute_to_per_second_2dp_if_required" then
						precision = 60
						displayPrecision = 2
						ifRequired = true
					elseif format == "milliseconds_to_seconds" then
						precision = 1000
					elseif format == "milliseconds_to_seconds_halved" then
						precision = 1000
					elseif format == "milliseconds_to_seconds_0dp" then
						precision = 1000
						displayPrecision = 0
					elseif format == "milliseconds_to_seconds_1dp" then
						precision = 1000
						displayPrecision = 1
					elseif format == "milliseconds_to_seconds_2dp" then
						precision = 1000
						displayPrecision = 2
					elseif format == "milliseconds_to_seconds_2dp_if_required" then
						precision = 1000
						displayPrecision = 2
						ifRequired = true
					elseif format == "deciseconds_to_seconds" then
						precision = 10
					end
				end
			end
			if scalability.isScalable and ((baseValueScalar and baseValueScalar ~= 1) or (valueScalar and valueScalar ~= 1)) then
				scalableValues[i] = itemLib.formatValue(scalableValues[i], baseValueScalar, valueScalar, precision or 1, displayPrecision, ifRequired)
			else
				scalableValues[i] = itemLib.formatValue(scalableValues[i], 1, 1, precision or 1, displayPrecision, ifRequired)
			end
		end
		for _, replacement in ipairs(scalableValues) do
			scalableLine = scalableLine:gsub("#", replacement, 1)
		end
		return scalableLine
	else -- fallback to old method for determining scalability
		-- ConPrintf("Couldn't find scalability data falling back to old implementation: %s", strippedLine)
		local precisionSame = true
		-- Create a line with ranges removed to check if the mod is a high precision mod.
		local testLine = not line:find("-", 1, true) and line or
			line:gsub("(%+?)%((%-?%d+%.?%d*)%-(%-?%d+%.?%d*)%)",
			function(plus, min, max)
				min = tonumber(min)
				local maxPrecision = min + range * (tonumber(max) - min)
				local minPrecision = m_floor(maxPrecision + 0.5)
				if minPrecision ~= maxPrecision then
					precisionSame = false
				end
				return (minPrecision < 0 and "" or plus) .. tostring(minPrecision)
			end)
			:gsub("%-(%d+%%) (%a+)", antonymFunc)

		if precisionSame and (not valueScalar or valueScalar == 1) and (not baseValueScalar or baseValueScalar == 1)then
			return testLine
		end

		local precision = nil
		local modList, extra = modLib.parseMod(testLine)
		if modList and not extra then
			for _, mod in pairs(modList) do
				local subMod = mod
				if type(mod.value) == "table" and mod.value.mod then
					subMod = mod.value.mod
				end
				if type(subMod.value) == "number" and data.highPrecisionMods[subMod.name] and data.highPrecisionMods[subMod.name][subMod.type] then
					precision = data.highPrecisionMods[subMod.name][subMod.type]
				end
			end
		end
		if not precision and line:match("(%d+%.%d*)") then
			precision = data.defaultHighPrecision
		end
		local numbers = 0
		line = line:gsub("(%+?)%((%-?%d+%.?%d*)%-(%-?%d+%.?%d*)%)",
			function(plus, min, max)
				numbers = numbers + 1
				local power = 10 ^ (precision or 0)
				local numVal = m_floor((tonumber(min) + range * (tonumber(max) - tonumber(min))) * power + 0.5) / power
				return (numVal < 0 and "" or plus) .. tostring(numVal)
			end)
			:gsub("%-(%d+%%) (%a+)", antonymFunc)

		if numbers == 0 and line:match("(%d+%.?%d*)%%? ") then --If a mod contains x or x% and is not already a ranged value, then assume only the first number will be scalable.
			numbers = 1
		end

		return itemLib.applyValueScalar(line, valueScalar, baseValueScalar, numbers, precision)
	end
end

function itemLib.formatModLine(modLine, dbMode)
	local line = (not dbMode and modLine.range and itemLib.applyRange(modLine.line, modLine.range, modLine.valueScalar, modLine.corruptedRange)) or modLine.line
	if not line:match("^Gain %d+%% to %d+%%") and (line:match("^%+?0%%? ") or (line:match(" %+?0%%? ") and not line:match("0 to [1-9]")) or line:match(" 0%-0 ") or line:match(" 0 to 0 ")) then -- Hack to hide 0-value modifiers
		return
	end
	local colorCode
	if modLine.extra then
		colorCode = colorCodes.UNSUPPORTED
		if launch.devModeAlt then
			line = line .. "   ^1'" .. modLine.extra .. "'"
		end
	else
		colorCode = (modLine.enchant and colorCodes.ENCHANTED) or (modLine.custom and colorCodes.CUSTOM) or colorCodes.MAGIC
	end
	return colorCode..line
end

itemLib.wiki = {
	key = "F1",
	openGem = function(gemData)
		local name
		if gemData.name then -- skill
			name = gemData.name
			if gemData.tags.support then
				name = name .. " Support"
			end
		else -- grantedEffect from item/passive
			name = gemData;
		end

		itemLib.wiki.open(name)
	end,
	openItem = function(item)
		local name = item.rarity == "UNIQUE" and item.title or item.baseName

		itemLib.wiki.open(name)
	end,
	open = function(name)
		local route = string.gsub(name, " ", "_")

		OpenURL("https://www.poe2wiki.net/wiki/" .. route)
		itemLib.wiki.triggered = true
	end,
	matchesKey = function(key)
		return key == itemLib.wiki.key
	end,
	triggered = false
}