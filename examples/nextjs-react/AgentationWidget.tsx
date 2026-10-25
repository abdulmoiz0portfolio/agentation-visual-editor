'use client';

import React from 'react';
import Script from 'next/script';

/**
 * AgentationWidget - Next.js (App Router / Pages Router) Component
 * 
 * Usage:
 * Import and render inside app/layout.tsx:
 * 
 * import AgentationWidget from '@/components/AgentationWidget';
 * 
 * export default function RootLayout({ children }) {
 *   return (
 *     <html>
 *       <body>
 *         {children}
 *         <AgentationWidget />
 *       </body>
 *     </html>
 *   );
 * }
 */
export default function AgentationWidget() {
  return (
    <Script
      src="/assets/js/agentation-widget.js"
      strategy="lazyOnload"
      onLoad={() => {
        if (typeof window !== 'undefined') {
          console.log('[Agentation] Visual Editor ready. Press Ctrl+Shift+A to toggle.');
        }
      }}
    />
  );
}
