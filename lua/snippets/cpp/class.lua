local function isHeader(line_to_cursor)
    return vim.fn.expand('%:e') == 'hpp';
end

local function toPascalCase(input)
    local function snakeReplacer(string)
        return string:sub(2, 2):upper()
    end

    return input:gsub("_%l", snakeReplacer):gsub("^%l", string.upper);
end

local function getClassName()
    return toPascalCase(vim.fn.expand('%:t:r'))
end

local function fileExists(fp)
    local f = io.open(fp, "r")
    if f ~= nil then
        io.close(f)
        return true
    else
        return false
    end
end

local function createMatchingCPP()
    local fp = vim.fn.expand('%:r') .. '.cpp'
    if not fileExists(fp) then
        local file = io.open(fp, 'w')
        if file == nil then return nil end
        file:write(
            '#include "' .. vim.fn.expand('%:t') .. '"\n\n' ..
            getClassName() .. '::' .. getClassName() .. '() {\n}\n\n' ..
            getClassName() .. '::~' .. getClassName() .. '() {\n}'
        )
        file:close()
    end

    return nil
end

return {
    s({ trig = "class_h", show_condition = isHeader }, {
        t({
            '#pragma once',
            '',
            'class ',
        }),
        f(getClassName),
        t({
            ' {',
            '  private:',
            '  public:',
            '    ',
        }),
        f(getClassName),
        t({
            '();',
            '    ~'
        }),
        f(getClassName),
        t({
            '();',
            '};'
        }),
        f(createMatchingCPP)
    })
}
