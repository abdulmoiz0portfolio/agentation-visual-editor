# Agentation Visual Editor & Feedback Toolbar

> Point-and-click in-browser visual feedback and annotation toolbar designed for human-AI collaborative web development.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-1.3.0-green.svg)](https://github.com/abdulmoiz0portfolio/agentation-visual-editor)
[![Bundle Size](https://img.shields.io/badge/bundle-zero--dependencies-orange.svg)](https://github.com/abdulmoiz0portfolio/agentation-visual-editor)
[![Platform](https://img.shields.io/badge/platform-HTML%20%7C%20PHP%20%7C%20React%20%7C%20Next.js%20%7C%20WordPress-purple.svg)](https://github.com/abdulmoiz0portfolio/agentation-visual-editor)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Abdul%20Moiz%20Baig-0A66C2.svg?logo=linkedin)](https://www.linkedin.com/in/a-moiz-baig/)

---

## 🚀 Eliminate Repetitive Work with Custom AI Automations

Are you spending hours on manual, repetitive tasks? We design and deploy autonomous AI agents, workflow automation pipelines, and custom web applications to run your operations on autopilot.

- 🌐 **Agency Website:** [automatixes.com](https://automatixes.com)
- 💼 **LinkedIn Profile:** [Abdul Moiz Baig](https://www.linkedin.com/in/a-moiz-baig/)
- 💬 **Direct WhatsApp / Call:** [+92 336 6920141](https://wa.me/923366920141)
- ✉️ **Direct Email:** [contact@automatixes.com](mailto:contact@automatixes.com)
- ⚡ **Our Core Services:**
  - **Repetitive Work Automation:** Connect your CRM, email, databases, and forms to eliminate human data entry.
  - **Autonomous AI Agents:** Custom customer service bots, sales follow-up agents, and automated lead qualifiers.
  - **Voice AI Agents:** Ultra-fast voice assistants handling inbound customer calls 24/7.
  - **Web Development & Tools:** High-performance web applications built for speed, conversion, and automation.

---

## Overview

Communicating visual UI changes to AI coding agents (Antigravity, Claude, Cursor, Copilot) or remote development teams is often friction-heavy. Inspecting raw CSS selectors, taking screenshots, and typing verbose descriptions wastes time.

**Agentation** solves this by embedding a lightweight, zero-latency visual annotation canvas into any web application:

- **Point-and-Click Inspection:** Click any DOM element (button, card, hero title, navigation link) to highlight and outline its exact boundaries.
- **Contextual Feedback:** Type your desired edits directly inside an inline modal overlay (*"Change color to neon yellow"*, *"Replace copy with 'Book Strategy Call'"*).
- **Exact Media & Image Path Capture:** Clicking an `<img>` automatically grabs its exact filename/path (e.g., `img [src="p4-with-box-light.webp"]`) so AI agents locate the asset instantly.
- **Quick Action Directives:** Built-in support for shorthand tags like `[Remove]`, `[Rotate]`, `[Flip]`, `[Swap Image]`, and `[Change Text]` for rapid non-typing workflows.
- **AI-Optimized Markdown Output:** Automatically compiles DOM hierarchy, computed styles, bounding box coordinates, and exact text content into structured markdown prompts ready for instant copy-pasting into AI chat windows.
- **Zero Production Overhead:** Completely dormant and hidden for regular site visitors. Activates exclusively when invoked with `?edit`, `#edit`, or the `Ctrl + Shift + A` keyboard shortcut.

---

## ⚡ Built-in Improvements & Features

### 1. Exact Image `src` & Filename Detection
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

## Activation Triggers

Once added to a website, the toolbar can be summoned using any of the following triggers:

| Trigger Method | Example / Shortcut | Description |
|---|---|---|
| **URL Query Parameter** | `https://your-site.com/?edit` | Activates toolbar immediately upon page load. |
| **URL Hash Anchor** | `https://your-site.com/#edit` | Client-side activation without causing server roundtrips. |
| **Keyboard Shortcut** | **`Ctrl + Shift + A`** *(or `Cmd + Shift + A`)* | Toggles toolbar visibility instantly anywhere on the page. |
| **Session Memory** | Auto-persisted in `sessionStorage` | Stays active while navigating between pages during an editing session. |

---

## Quickstart & Integration

### Option 1: Static HTML, PHP, or WordPress (1-Line Embed)

1. Copy `dist/agentation-widget.js` into your project assets folder (e.g., `assets/js/`).
2. Add the defer script tag right before the closing `</body>` tag (e.g., in `footer.php` or `index.html`):

```html
<!-- Agentation Visual Feedback Toolbar -->
<script src="assets/js/agentation-widget.js" defer></script>
</body>
```

### Option 2: Next.js (App Router / Pages Router) & React

Create a client-side wrapper in `components/AgentationWidget.tsx`:

```tsx
'use client';

import Script from 'next/script';

export default function AgentationWidget() {
  return (
    <Script
      src="/assets/js/agentation-widget.js"
      strategy="lazyOnload"
      onLoad={() => {
        console.log('[Agentation] Visual Editor ready. Press Ctrl+Shift+A to toggle.');
      }}
    />
  );
}
```

Include `<AgentationWidget />` inside your root layout (`app/layout.tsx`).

### Option 3: Universal Browser Bookmarklet (Zero Code Installation)

Want to use Agentation on a third-party website or a production site without modifying source code?

1. Open your browser bookmarks manager and click **Add New Bookmark**.
2. Name it **Agentation Visual Editor**.
3. In the URL field, paste the following snippet:

```javascript
javascript:(function(){if(window.AgentationWidget){window.AgentationWidget.toggleAgentation();return;}var s=document.createElement('script');s.src='https://cdn.jsdelivr.net/gh/abdulmoiz0portfolio/agentation-visual-editor@main/dist/agentation-widget.min.js';s.onload=function(){window.AgentationWidget&&window.AgentationWidget.mountAgentation();};document.body.appendChild(s);})();
```

Now, clicking that bookmark on **any** web page injects the toolbar instantly!

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

- 🌐 **Agency Website:** [automatixes.com](https://automatixes.com)
- 💼 **LinkedIn:** [linkedin.com/in/a-moiz-baig](https://www.linkedin.com/in/a-moiz-baig/)
- 💬 **Direct WhatsApp / Phone:** [+92 336 6920141](https://wa.me/923366920141)
- ✉️ **Email:** [contact@automatixes.com](mailto:contact@automatixes.com)

Distributed under the **MIT License**. Free for personal, commercial, and agency use.
