---
title: "ASCII Art and Diagrams"
date: 2025-11-02
draft: false
author: "markopolo123"
tags: ["ascii", "diagrams", "features"]
categories: ["examples"]
description: "Demonstrating ASCII art and diagram support"
---

One of the unique features of this theme is first-class support for ASCII art and box-drawing characters.

## Using the Box Shortcode

You can create bordered content using the `box` shortcode:

{{< box title="Important Note" >}}
This is content inside an ASCII-style box.
It preserves formatting and adds visual emphasis.
{{< /box >}}

## Using the Diagram Shortcode

The `diagram` shortcode preserves whitespace and character alignment:

{{< diagram >}}
┌──────────┐       ┌──────────┐
│  Client  │──────▶│  Server  │
└──────────┘       └──────────┘
     │                   │
     │    Request        │
     │──────────────────▶│
     │                   │
     │    Response       │
     │◀──────────────────│
     │                   │
{{< /diagram >}}

## System Architecture

{{< diagram >}}
┌─────────────────────────────────────────┐
│            Load Balancer                │
└─────────────┬───────────────────────────┘
              │
      ┌───────┼───────┐
      │       │       │
      ▼       ▼       ▼
┌─────────┐ ┌─────────┐ ┌─────────┐
│  Web    │ │  Web    │ │  Web    │
│ Server  │ │ Server  │ │ Server  │
└────┬────┘ └────┬────┘ └────┬────┘
     │           │           │
     └───────────┼───────────┘
                 │
                 ▼
         ┌──────────────┐
         │   Database   │
         └──────────────┘
{{< /diagram >}}

## Flow Chart Example

{{< diagram >}}
         START
           │
           ▼
    ┌─────────────┐
    │  Read Input │
    └──────┬──────┘
           │
           ▼
    ┌─────────────┐      YES
    │  Valid?     │──────────┐
    └──────┬──────┘          │
           │ NO               ▼
           │          ┌──────────────┐
           │          │   Process    │
           │          └──────┬───────┘
           │                 │
           │                 ▼
           │          ┌──────────────┐
           └─────────▶│  Show Error  │
                      └──────┬───────┘
                             │
                             ▼
                           END
{{< /diagram >}}

## Tables

Tables also maintain the monospace alignment:

| Feature        | Supported | Notes                    |
|----------------|-----------|--------------------------|
| Dark Mode      | Yes       | Automatic detection      |
| ASCII Art      | Yes       | Full support             |
| Responsive     | Yes       | Character-based          |
| JavaScript     | No        | Not required             |

## Inline Code

You can also use `inline code` within paragraphs, and it maintains the same monospace feel as the rest of the text.

The theme ensures that box-drawing characters like ┌─┐│└┘├┤┬┴┼ render consistently across different browsers and operating systems.
