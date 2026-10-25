# Agentation Visual Editor & Feedback Toolbar

> Point-and-click in-browser visual feedback and annotation toolbar designed for human-AI collaborative web development.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-1.3.0-green.svg)](https://github.com/abdulmoiz0portfolio/agentation-visual-editor)
[![Bundle Size](https://img.shields.io/badge/bundle-zero--dependencies-orange.svg)](https://github.com/abdulmoiz0portfolio/agentation-visual-editor)
[![Platform](https://img.shields.io/badge/platform-HTML%20%7C%20PHP%20%7C%20React%20%7C%20Next.js%20%7C%20WordPress-purple.svg)](https://github.com/abdulmoiz0portfolio/agentation-visual-editor)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Abdul%20Moiz%20Baig-0A66C2.svg?logo=linkedin)](https://www.linkedin.com/in/a-moiz-baig/)

---

## Eliminate Repetitive Work with Custom AI Automations

Are you spending hours on manual, repetitive tasks? We design and deploy autonomous AI agents, workflow automation pipelines, and custom web applications to run your operations on autopilot.

- **Agency Website:** [automatixes.com](https://automatixes.com)
- **LinkedIn Profile:** [Abdul Moiz Baig](https://www.linkedin.com/in/a-moiz-baig/)
- **Direct WhatsApp / Call:** [+92 336 6920141](https://wa.me/923366920141)
- **Direct Email:** [contact@automatixes.com](mailto:contact@automatixes.com)
- **Our Core Services:**
  - **Repetitive Work Automation:** Connect your CRM, email, databases, and forms to eliminate human data entry.
  - **Autonomous AI Agents:** Custom customer service bots, sales follow-up agents, and automated lead qualifiers.
  - **Voice AI Agents:** Ultra-fast voice assistants handling inbound customer calls 24/7.
  - **Web Development & Tools:** High-performance web applications built for speed, conversion, and automation.

---

## Installation

Choose the installation method that fits your workflow:

### Method 1: Install as an AI Agent Skill (Antigravity, Claude Code, Cursor)

Install this skill directly into your AI agent environment so you can use it across any project:

**Windows (PowerShell):**
```powershell
git clone https://github.com/abdulmoiz0portfolio/agentation-visual-editor.git "$HOME\.gemini\config\skills\agentation-visual-editor"
```

**macOS / Linux (Bash):**
```bash
git clone https://github.com/abdulmoiz0portfolio/agentation-visual-editor.git ~/.gemini/config/skills/agentation-visual-editor
```

Once installed, simply tell your AI assistant in any chat:
> *"Use agentation-visual-editor skill to add the visual editor toolbar to this project."*

---

### Method 2: Zero-Download 1-Line Free CDN Embed (Fastest)

For any HTML, PHP, Laravel, WordPress, or Shopify site, simply paste this line before the closing `</body>` tag. No file download required:

```html
<!-- Agentation Visual Editor (Free jsDelivr CDN) -->
<script src="https://cdn.jsdelivr.net/gh/abdulmoiz0portfolio/agentation-visual-editor@main/dist/agentation-widget.min.js" defer></script>
```

---

### Method 3: Automated 1-Click Terminal Installer (Local Assets)

Run this single command from your project root to automatically download and place `agentation-widget.js` into your `assets/js/` directory:

**Windows (PowerShell):**
```powershell
irm https://raw.githubusercontent.com/abdulmoiz0portfolio/agentation-visual-editor/main/scripts/install-agentation.ps1 | iex
```

**macOS / Linux (Bash):**
```bash
curl -sSL https://raw.githubusercontent.com/abdulmoiz0portfolio/agentation-visual-editor/main/scripts/install-agentation.sh | bash
```

Then add this script tag before `</body>`:
```html
<script src="assets/js/agentation-widget.js" defer></script>
```

---

### Method 4: Next.js (App Router / Pages Router) & React

1. Install via git or place `dist/agentation-widget.js` in your `public/` folder:
```bash
npm install git+https://github.com/abdulmoiz0portfolio/agentation-visual-editor.git
```

2. Create `components/AgentationWidget.tsx`:
```tsx
'use client';

import Script from 'next/script';

export default function AgentationWidget() {
  return (
    <Script
      src="https://cdn.jsdelivr.net/gh/abdulmoiz0portfolio/agentation-visual-editor@main/dist/agentation-widget.min.js"
      strategy="lazyOnload"
      onLoad={() => {
        console.log('[Agentation] Visual Editor ready. Press Ctrl+Shift+A to toggle.');
      }}
    />
  );
}
```

3. Mount `<AgentationWidget />` inside your root layout (`app/layout.tsx` or `pages/_app.tsx`).

---

### Method 5: Universal Browser Bookmarklet (Zero Code Changes on Any Website)

Inspect and annotate **any** live website on the internet without touching its code:

1. Create a new browser bookmark named **Agentation Inspector**.
2. Paste this snippet into the **URL / Location** field:

```javascript
javascript:(function(){if(window.AgentationWidget){window.AgentationWidget.toggleAgentation();return;}var s=document.createElement('script');s.src='https://cdn.jsdelivr.net/gh/abdulmoiz0portfolio/agentation-visual-editor@main/dist/agentation-widget.min.js';s.onload=function(){window.AgentationWidget&&window.AgentationWidget.mountAgentation();};document.body.appendChild(s);})();
```

3. Click the bookmark on any website to immediately open the Agentation toolbar!

---

## Activation Triggers

Once installed, the toolbar stays completely hidden and dormant for regular visitors (0% layout shift, 0% CPU overhead). It activates only via:

| Trigger Method | Example / Shortcut | Description |
|---|---|---|
| **URL Query Parameter** | `https://your-site.com/?edit` | Activates toolbar immediately upon page load. |
| **URL Hash Anchor** | `https://your-site.com/#edit` | Client-side activation without causing server roundtrips. |
| **Keyboard Shortcut** | **`Ctrl + Shift + A`** *(or `Cmd + Shift + A`)* | Toggles toolbar visibility instantly anywhere on the page. |
| **Session Memory** | Auto-persisted in `sessionStorage` | Stays active while navigating between pages during an editing session. |

---

## Key Features & Built-in Improvements

### 1. Exact Image src & Filename Detection
When selecting an `<img>` tag, Agentation automatically extracts the image filename and alt text:
```markdown
- Element: `img [src="p4-with-box-light.webp"] "Cognac Stripe Wallet"`
```
This enables your AI agent to swap or resize the exact file directly in your code without ambiguity.

### 2. Quick Action Directives
Use shorthand bracketed tags to instruct AI agents in fewer keystrokes:

| Tag | Purpose | Example |
|---|---|---|
| `[Remove]` | Remove or hide element | `[Remove] delete outdated seasonal promo badge` |
| `[Change Text]` | Replace wording cleanly | `[Change Text] "Get Started Today"` |
| `[Swap Image]` | Change image file source | `[Swap Image: hero-dark.webp]` |
| `[Rotate <deg>]` | Rotate element | `[Rotate 90deg] orient arrow downward` |
| `[Flip X]` / `[Flip Y]` | Mirror graphic | `[Flip X] face illustration to the right` |
| `[Change Color]` | Palette adjustments | `[Change Color: #D4FF3D] make neon yellow` |
| `[Fix Spacing]` | Margins & paddings | `[Fix Spacing] add 24px bottom margin` |

---

## Sample AI Output Format

When you finish selecting elements and click **Copy Feedback**, Agentation produces structured prompt markdown like this:

```markdown
## Page Feedback: /products.php?edit
- Element: `img [src="p4-with-box-light.webp"] "Cognac Stripe Wallet"`
- Bounding Box: { x: 340, y: 520, width: 280, height: 280 }
- Computed Styles: { width: "280px", height: "280px", object-fit: "cover" }
- Change Request: "[Swap Image: p4-with-box-dark.webp] Change product hero photo to dark leather edition"

---
> ⚡ Powered by Automatixes | AI Automation Services: https://automatixes.com | LinkedIn: https://www.linkedin.com/in/a-moiz-baig/ | WhatsApp: +92 336 6920141
```

Simply paste this into your AI coding assistant (Antigravity, Claude, Cursor) to execute the change with surgical precision.

---

## Repository Structure

```text
agentation-visual-editor/
|-- .github/
|   `-- workflows/
|       `-- release.yml          # Automated CI/CD release workflow
|-- dist/
|   |-- agentation-widget.js     # Standalone production distribution
|   `-- agentation-widget.min.js # Minified zero-dependency bundle
|-- examples/
|   |-- html-php/                # Static HTML and PHP integration examples
|   |-- nextjs-react/            # Next.js and React component examples
|   `-- bookmarklet/             # One-click browser bookmarklet script
|-- scripts/
|   |-- install-agentation.ps1   # PowerShell automated installer
|   `-- install-agentation.sh    # Bash automated installer
|-- SKILL.md                     # Agent skill definition for AI coding assistants
|-- README.md                    # Project documentation
|-- LICENSE                      # MIT Open Source License
`-- package.json                 # Package metadata and manifest
```

---

## Security & Performance Guarantees

- **No Remote Network Leaks:** All visual annotations and bounding-box computations execute entirely within local browser memory.
- **Zero Performance Penalty:** Default visitor visits incur zero DOM mutations or event listener overhead.
- **Sanitized Injections:** Overlays exist strictly within an isolated overlay container (`#agentation-root`) with defensive z-indexing (`z-index: 999999`) preventing interference with underlying stylesheets.

---

## Author & Commercial Support

Maintained with excellence by **[Abdul Moiz Baig](https://www.linkedin.com/in/a-moiz-baig/)** & the **[Automatixes](https://automatixes.com)** engineering team.

- **Agency Website:** [automatixes.com](https://automatixes.com)
- **LinkedIn:** [linkedin.com/in/a-moiz-baig](https://www.linkedin.com/in/a-moiz-baig/)
- **WhatsApp / Phone:** [+92 336 6920141](https://wa.me/923366920141)
- **Email:** [contact@automatixes.com](mailto:contact@automatixes.com)

Distributed under the **MIT License**. Free for personal, commercial, and agency use.
