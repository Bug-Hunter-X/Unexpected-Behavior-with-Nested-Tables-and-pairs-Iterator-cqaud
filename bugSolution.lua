local function foo(t)
  local function dfs(t, path)
    for k, v in pairs(t) do
      local newPath = path .. "." .. k
      if type(v) == "table" then
        dfs(v, newPath)
      else
        print(newPath .. "=" .. tostring(v))
      end
    end
  end
  dfs(t, "")
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)