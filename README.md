# Minimalist Web Hugo Theme

A monospace-first minimalist Hugo theme inspired by [The Monospace Web](https://owickstrom.github.io/the-monospace-web/) by Oskar Wickström.

## Features

- **Monospace typography throughout**: Uses monospace fonts for all content, not just code
- **Character-based responsive design**: Layout uses `ch` units for unique responsive behavior
- **Automatic dark mode**: Respects system/browser color scheme preferences (no JavaScript!)
- **ASCII art support**: First-class support for box-drawing characters and diagrams
- **Minimalist aesthetic**: Clean, distraction-free design
- **Fast and lightweight**: Minimal CSS, no JavaScript required for core functionality
- **Accessibility focused**: Semantic HTML5, ARIA landmarks, proper heading hierarchy
- **Hugo asset pipeline**: SCSS compilation with fingerprinting

## Demo

See the `exampleSite` directory for a fully working demo with various content examples.

## Installation

### As a Hugo Module

```bash
hugo mod init github.com/<username>/<repo>
```

Add to your `hugo.toml`:

```toml
[module]
  [[module.imports]]
    path = "github.com/markopolo123/minimalist-web-hugo-theme"
```

### As a Git Submodule

```bash
cd your-hugo-site
git submodule add https://github.com/markopolo123/minimalist-web-hugo-theme.git themes/minimalist-web-hugo-theme
```

Then add to your `hugo.toml`:

```toml
theme = "minimalist-web-hugo-theme"
```

### Manual Installation

Clone or download this repository into your Hugo site's `themes` directory:

```bash
cd your-hugo-site/themes
git clone https://github.com/markopolo123/minimalist-web-hugo-theme.git
```

## Requirements

- **Hugo Extended v0.140.0 or later** (for SCSS compilation)
- No other dependencies!

## Quick Start

1. Install the theme using one of the methods above
2. Copy the example configuration from `exampleSite/hugo.toml` to your site's `hugo.toml`
3. Customize the configuration to match your needs
4. Start Hugo: `hugo server -D`
5. Open http://localhost:1313 in your browser

## Configuration

### Basic Configuration

```toml
baseURL = "/"
languageCode = "en-us"
title = "Your Site Title"
theme = "minimalist-web-hugo-theme"

[params]
  description = "Your site description"
  author = "Your Name"
  showTableOfContents = true
  showPoweredBy = true
  mainSections = ["posts", "blog"]

  # Optional: Custom ASCII site logo
  siteLogo = """
  ╔═══════════════════════╗
  ║   YOUR SITE NAME      ║
  ╚═══════════════════════╝
  """

  footerText = "© 2025 Your Name"

# Taxonomies
[taxonomies]
  tag = "tags"
  category = "categories"

# Markup configuration
[markup]
  [markup.tableOfContents]
    endLevel = 3
    ordered = false
    startLevel = 2
```

### Menu Configuration

```toml
[[menu.main]]
  name = "Home"
  url = "/"
  weight = 1

[[menu.main]]
  name = "Posts"
  url = "/posts/"
  weight = 2

[[menu.main]]
  name = "About"
  url = "/about/"
  weight = 3

[[menu.main]]
  name = "Tags"
  url = "/tags/"
  weight = 4
```

### Available Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `description` | string | "" | Site description for meta tags |
| `author` | string | "" | Default author name |
| `showTableOfContents` | bool | true | Show TOC on posts |
| `showPoweredBy` | bool | true | Show "Powered by Hugo" in footer |
| `mainSections` | array | ["posts"] | Main content sections |
| `siteLogo` | string | "" | Custom ASCII logo (optional) |
| `footerText` | string | "" | Custom footer text |

## Content Creation

### Creating a Post

```bash
hugo new posts/my-first-post.md
```

### Front Matter

```yaml
---
title: "My Post Title"
date: 2025-11-03
draft: false
description: "Post description for meta tags"
tags: ["tag1", "tag2"]
categories: ["category1"]
---
```

## Shortcodes

### Box Shortcode

Create bordered content boxes:

```markdown
{{< box title="Important Note" >}}
This is content inside an ASCII-style box.
It preserves formatting and adds visual emphasis.
{{< /box >}}
```

### Diagram Shortcode

Display ASCII diagrams with proper formatting:

```markdown
{{< diagram >}}
┌──────────┐       ┌──────────┐
│  Client  │──────▶│  Server  │
└──────────┘       └──────────┘
{{< /diagram >}}
```

### Monospace Table Shortcode

Enhanced table formatting (though regular Markdown tables work fine too):

```markdown
{{< monospace-table >}}
| Column 1 | Column 2 |
|----------|----------|
| Data 1   | Data 2   |
{{< /monospace-table >}}
```

## Dark Mode

The theme automatically detects and respects your system's color scheme preference using the `prefers-color-scheme` CSS media query. No JavaScript or manual toggle required!

### Light Mode Colors
- Background: `#ffffff`
- Text: `#000000`
- Accent: `#0000ff`
- Border: `#000000`

### Dark Mode Colors
- Background: `#000000`
- Text: `#c0c0c0`
- Accent: `#00ffff`
- Border: `#808080`

## Character-Based Responsive Design

Unlike traditional responsive design with pixel breakpoints, this theme uses character-based measurements:

- **Large screens**: 80 characters wide
- **Medium screens**: 60 characters wide
- **Small screens**: 40 characters wide

This creates optimal line lengths and maintains the monospace grid at all screen sizes.

## Development

### Using the Example Site

The `exampleSite` directory contains a working Hugo site for testing the theme:

```bash
# Using just (recommended)
just dev

# Or directly with Hugo
hugo server --source exampleSite --themesDir ../.. --navigateToChanged
```

### Available Just Commands

```bash
just dev          # Start development server
just build        # Build the example site
just clean        # Remove build artifacts
just validate     # Check for template errors
just debug        # Build with verbose output
just new-post title="My Post"  # Create new post
```

### File Structure

```
minimalist-web-hugo-theme/
├── archetypes/          # Content templates
├── assets/
│   └── scss/           # SCSS stylesheets
├── layouts/
│   ├── _default/       # Base templates
│   ├── partials/       # Reusable components
│   └── shortcodes/     # Content shortcodes
├── static/             # Static assets
├── data/               # Theme data
├── i18n/               # Translations
├── exampleSite/        # Demo site
├── hugo.toml           # Theme metadata
├── justfile            # Development tasks
└── README.md
```

## Browser Support

- Modern evergreen browsers (Chrome, Firefox, Safari, Edge)
- Graceful degradation for older browsers
- No JavaScript required for core functionality
- Progressive enhancement for optional features

## Customization

### Custom Colors

You can override the color scheme by creating your own `assets/scss/custom.scss`:

```scss
:root {
  --accent-color: #ff00ff; // Your custom accent color
}
```

Then import it in your site's configuration.

### Custom Fonts

While the theme uses system monospace fonts by default, you can specify your own:

```scss
:root {
  --font-mono: 'Your Custom Mono Font', 'Courier New', monospace;
}
```

## Accessibility

- Semantic HTML5 structure
- ARIA landmarks and labels
- Skip-to-content link
- Proper heading hierarchy
- WCAG AA contrast ratios (both light and dark modes)
- Keyboard navigation support
- Screen reader friendly

## Credits

- **Original concept**: [Oskar Wickström](https://owickstrom.github.io/) - [The Monospace Web](https://owickstrom.github.io/the-monospace-web/)
- **Theme implementation**: [markopolo123](https://github.com/markopolo123)
- **Inspiration**: Terminal aesthetics and 70s computing

## License

MIT License - see [LICENSE](LICENSE) file for details.

The theme is inspired by "The Monospace Web" by Oskar Wickström. The original concept and design principles are credited to Oskar Wickström.

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

## Support

- [GitHub Issues](https://github.com/markopolo123/minimalist-web-hugo-theme/issues)
- [Hugo Documentation](https://gohugo.io/documentation/)
- [The Monospace Web](https://owickstrom.github.io/the-monospace-web/)

## Changelog

### v1.0.0 (2025-11-03)

Initial release:
- Monospace-first design
- Character-based responsive layout
- Automatic dark mode support
- ASCII art and diagram shortcodes
- Complete Hugo theme implementation
- Example site with documentation
- Accessibility features
- Just-based development workflow
