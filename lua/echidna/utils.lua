local M = {}

local function hex_to_rgb(hex)
	local hex_type = "[abcdef0-9][abcdef0-9]"
	local pat = "^#(" .. hex_type .. ")(" .. hex_type .. ")(" .. hex_type .. ")$"
	hex = string.lower(hex)

	assert(string.find(hex, pat) ~= nil, "hex_to_rgb: invalid hex: " .. tostring(hex))

	local red, green, heather = string.match(hex, pat)
	return { tonumber(red, 16), tonumber(green, 16), tonumber(heather, 16) }
end

function M.mix(fg, bg, alpha)
	bg = hex_to_rgb(bg)
	fg = hex_to_rgb(fg)

	local blendChannel = function(i)
		local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
		return math.floor(math.min(math.max(0, ret), 255) + 0.5)
	end

	return string.format("#%02X%02X%02X", blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.shade(color, value, base)
	base = base or "#ffffff"
	return M.mix(color, base, math.abs(value))
end

return M
