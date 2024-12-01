local function split_lines(inputstr)
    local result = {};
    for line in string.gmatch(inputstr .. "\n", "(.-)\n") do
        table.insert(result, line);
    end
    return result;
end

return split_lines
