return {
    s("litelement", t({
        'import { css, html, LitElement } from "lit";',
        'import { customElement } from "lit/decorators.js";',
        'import { SharedStyles } from "../shared-styles";',
        '',
        '@customElement(\'__CLASS__\')',
        'export class __CLASS__ extends LitElement {',
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
    }))
}
