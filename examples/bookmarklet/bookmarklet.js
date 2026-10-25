/**
 * Agentation Universal Bookmarklet
 * 
 * Allows point-and-click visual element inspection on any website in your browser
 * without modifying website source code.
 * 
 * How to use:
 * 1. Create a browser bookmark named "Agentation Inspector"
 * 2. Set the URL to the minified snippet below:
 */

// Minified Bookmarklet Code:
javascript:(function(){if(window.AgentationWidget){window.AgentationWidget.toggleAgentation();return;}var s=document.createElement('script');s.src='https://cdn.jsdelivr.net/gh/abdulmoiz0portfolio/agentation-visual-editor@main/dist/agentation-widget.min.js';s.onload=function(){window.AgentationWidget&&window.AgentationWidget.mountAgentation();};document.body.appendChild(s);})();
