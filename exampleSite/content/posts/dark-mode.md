---
title: "Dark Mode Support"
date: 2025-11-01
draft: false
author: "markopolo123"
tags: ["dark-mode", "css", "features"]
categories: ["examples"]
description: "Automatic dark mode based on system preferences"
---

This theme includes automatic dark mode support that respects your system preferences.

## How It Works

The theme uses CSS custom properties and the `prefers-color-scheme` media query to automatically switch between light and dark modes based on your operating system or browser settings.

{{< box title="Try It Out" >}}
Change your system's color scheme preference to see the theme automatically adapt!
{{< /box >}}

## Color Palettes

### Light Mode

- Background: `#ffffff`
- Text: `#000000`
- Border: `#000000`
- Accent: `#0000ff`
- Secondary: `#404040`

### Dark Mode

- Background: `#000000`
- Text: `#c0c0c0`
- Border: `#808080`
- Accent: `#00ffff`
- Secondary: `#909090`

## Implementation

No JavaScript is required! The theme uses pure CSS:

```css
@media (prefers-color-scheme: dark) {
  :root {
    --bg-color: #000000;
    --text-color: #c0c0c0;
    --border-color: #808080;
    --accent-color: #00ffff;
  }
}
```

## Accessibility

Both color schemes maintain WCAG AA contrast ratios for readability. The monospace font ensures consistent character spacing in both modes.

## ASCII Art in Dark Mode

The box-drawing characters work great in both modes:

{{< diagram >}}
┏━━━━━━━━━━━━━━━━━━━━━━━━┓
┃  Dark Mode Ready       ┃
┃  ✓ Automatic switching ┃
┃  ✓ No JavaScript       ┃
┃  ✓ System preference   ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━┛
{{< /diagram >}}

The theme ensures all elements—text, borders, code blocks, and ASCII art—are properly styled for both light and dark modes.
