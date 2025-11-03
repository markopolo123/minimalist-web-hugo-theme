---
title: "Character-Based Responsive Design"
date: 2025-10-31
draft: false
author: "markopolo123"
tags: ["responsive", "css", "design"]
categories: ["examples"]
description: "How character-based measurements create unique responsive behavior"
---

Unlike traditional responsive design that uses pixel breakpoints, this theme uses character-based measurements for a unique approach to responsiveness.

## The Concept

Instead of:
```css
max-width: 1200px;
```

We use:
```css
max-width: 80ch;
```

The `ch` unit represents the width of the "0" character in the current font. This means the layout responds to character count rather than pixel width.

## Breakpoints

The theme uses character-based breakpoints:

- **Large screens**: 80 characters wide
- **Medium screens**: 60 characters wide
- **Small screens**: 40 characters wide

{{< box title="Responsive Behavior" >}}
Try resizing your browser window. Notice how the content reflows at character boundaries, maintaining the monospace grid alignment.
{{< /box >}}

## Why This Works

For a monospace font, this approach provides:

1. **Optimal line length**: Reading research suggests 60-80 characters per line
2. **Consistent experience**: Same character count across devices
3. **Grid alignment**: Layout stays aligned to the character grid
4. **Predictable wrapping**: Text wraps at character boundaries

## Example Layout

```scss
.container {
  max-width: 80ch;
  margin: 0 auto;
  padding: 0 2ch;

  @media (max-width: 80ch) {
    max-width: 60ch;
  }

  @media (max-width: 60ch) {
    max-width: 100%;
    padding: 0 1ch;
  }
}
```

## Mobile Experience

On mobile devices, the theme maintains readability by:

- Reducing character count per line
- Maintaining spacing in character units
- Preserving monospace alignment
- Keeping ASCII art readable

This creates a cohesive experience across all screen sizes while staying true to the monospace aesthetic.
