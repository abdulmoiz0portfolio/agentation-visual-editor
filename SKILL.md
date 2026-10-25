---
name: agentation-visual-editor
description: "Embed, inject, or configure the Agentation point-and-click in-browser visual feedback toolbar on any web application (HTML, PHP, React, Next.js, Vue, WordPress) to select and annotate UI elements directly for AI coding agents."
argument-hint: "[install|inject|bookmarklet|troubleshoot] [project-type]"
metadata:
  version: "1.0.0"
  author: "Moiz Baig / Automatixes"
  tags: ["ui", "visual-editor", "agentation", "feedback", "devtools", "inspection"]
---

# Agentation Visual Editor & Feedback Skill

This skill allows AI coding agents to integrate, configure, or troubleshoot the **Agentation Visual Feedback & Annotation Toolbar** across any web project.

The toolbar provides an interactive, in-browser visual inspection overlay. Users can click any DOM element on a live page, outline it, add change requests, and generate structured markdown prompts formatted specifically for AI coding agents (Antigravity, Claude, Cursor, Copilot).

---

## Capabilities & Activation Triggers

The agent should activate this skill when:
- The user requests an in-browser point-and-click element editor, visual feedback tool, or annotation widget.
- The user asks how to trigger or enable `/edit`, `?edit`, `#edit`, or `Ctrl + Shift + A` on their website.
- The user wants to bridge visual browser interactions directly with automated AI code edits.
- The user needs a zero-dependency visual bug reporter or UI feedback toolbar for their team or clients.

---

## Core Behavior & Trigger Modes

Once installed in a web project, the toolbar stays completely idle and hidden by default (0% layout shift, 0% CPU overhead). It activates only when explicitly summoned via:

1. **URL Query Parameter:** Appending `?edit`, `?dev`, or `?agentation` to the URL:
   ```text
   https://example.com/?edit
   https://example.com/about.php?edit
   ```
2. **URL Hash Anchor:** Appending `#edit` to the URL:
   ```text
   https://example.com/#edit
   ```
3. **Keyboard Shortcut:** Pressing **`Ctrl + Shift + A`** (or **`Cmd + Shift + A`** on macOS).
4. **Session Persistence:** Once activated, it saves state to `sessionStorage.setItem('agentation_active', 'true')` so navigating between pages maintains the editor until the tab is closed.

---

## Integration Recipes by Stack

### 1. Plain HTML / PHP / WordPress

1. Place `agentation-widget.js` into your static asset folder (e.g. `assets/js/agentation-widget.js`).
2. Add the defer script tag immediately before the closing `</body>` tag (in `footer.php` or `index.html`):

```html
<!-- Agentation Visual Feedback Toolbar -->
<script src="assets/js/agentation-widget.js" defer></script>
</body>
```

### 2. Next.js (App Router / Pages Router) & React

Create a client component `components/AgentationWidget.tsx`:

```tsx
'use client';

import Script from 'next/script';

export default function AgentationWidget() {
  // Only load in development or when explicitly enabled
  const isEnabled = 
    process.env.NODE_ENV === 'development' ||
    (typeof window !== 'undefined' && 
      (window.location.search.includes('edit') || 
       window.location.hash.includes('edit') ||
       sessionStorage.getItem('agentation_active') === 'true'));

  return (
    <Script
      src="/assets/js/agentation-widget.js"
      strategy="lazyOnload"
      onLoad={() => {
        console.log('[Agentation] Visual Editor Loaded. Press Ctrl+Shift+A to toggle.');
      }}
    />
  );
}
```

Then mount `<AgentationWidget />` inside `app/layout.tsx` or root template.

---

## Universal Instant Bookmarklet (Zero Code Changes)

For websites where the user cannot modify source files or wants instant point-and-click inspection on any live site:

Create a browser bookmark with this URL:
```javascript
javascript:(function(){if(window.AgentationWidget){window.AgentationWidget.toggleAgentation();return;}var s=document.createElement('script');s.src='https://cdn.jsdelivr.net/gh/abdulmoiz0portfolio/agentation-visual-editor@main/dist/agentation-widget.min.js';s.onload=function(){window.AgentationWidget&&window.AgentationWidget.mountAgentation();};document.body.appendChild(s);})();
```

Clicking this bookmark on any active web page instantly launches the Agentation inspection canvas.

---

## Agent Response Formatting for Captured Annotations

When a user shares output generated from the Agentation toolbar, it will arrive in this structured format:

```markdown
## Page Feedback: /service.php?edit
- Element: `button.btn-primary.cta-btn`
- Bounding Box: { x: 340, y: 520, w: 180, h: 48 }
- Text: "Book Free Consultation"
- Comment: "Change this button to bright neon yellow (#D4FF3D) and text to 'Start AI Audit'"
```

When receiving this prompt:
1. Locate the file containing the referenced element (`service.php`).
2. Target the exact selector and text content indicated.
3. Apply the requested copy/CSS change with precision without disturbing unaffected sections.
4. Verify using static analysis or automated tests.
