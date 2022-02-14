describe("Linear search", function()
	local linear_search = require("searches.linear_search")
	it("should return one index if found", function()
		assert.equals(2, linear_search({ 1, 2, 3 }, 2, true))
		assert.equals(3, linear_search({ 1, 3, 2 }, 2))
	end)
	it("should support a custom less_than function", function()
		assert.equals(
			1,
			linear_search({ 3, 2, 1 }, 3, function(a, b)
				return a > b
			end)
		)
	end)
	it("should return a valid negative insertion index if not found", function()
		assert.equals(-1, linear_search({ 2, 4, 6 }, 1, true))
		assert.equals(-4, linear_search({ 2, 4, 6 }, 1))
	end)
end)
