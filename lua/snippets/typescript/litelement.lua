local function getElementName()
    return "@customElement('" .. vim.fn.expand('%:t:r') .. "')";
end

local function toPascalCase(input)
    local function kebabReplacer(string)
        return string:sub(2, 2):upper()
    end

    return input:gsub("-%l", kebabReplacer):gsub("^%l", string.upper);
end

local function getClassName()
    return toPascalCase(vim.fn.expand('%:t:r'))
end

return {
    s("litelement", {
        t({
            'import { css, html, LitElement } from \'lit\';',
            'import { customElement } from \'lit/decorators.js\';',
            'import { SharedStyles } from \'../shared-styles\';',
            '',
            '',
        }),
        f(getElementName),
        t({
            '',
            'export class '
        }),
        f(getClassName),
        t({
            ' extends LitElement {',
            '    static styles = [SharedStyles, css`',
            '',
            '    `];',
            '',
            '    protected render() {',
            '        return html`',
            '',
            '        `;',
            '    }',
            '}',
        })
    })
}
