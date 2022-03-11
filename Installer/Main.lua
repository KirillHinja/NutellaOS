
-- Working with components directly before system libraries are downloaded & initialized
local function centrize(width)
	return math.floor(screenWidth / 2 - width / 2)
end

local function centrizedText(y, color, text)
	GPUProxy.fill(1, y, screenWidth, 1, " ")
	GPUProxy.setForeground(color)
	GPUProxy.set(centrize(#text), y, text)
end

local function title()
	local y = math.floor(screenHeight / 2 - 1)
	centrizedText(y, 0x2D2D2D, "Nuttela OS")

	return y + 2
end
