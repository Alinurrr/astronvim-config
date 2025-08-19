# Aran's AstroNvim Configuration

**Built on AstroNvim v5+**

A personalized Neovim configuration optimized for modern web development, featuring TypeScript, Go, and framework-specific enhancements.

## ✨ Overview

This configuration transforms Neovim into a powerful IDE for web development with intelligent language support, GitHub Copilot integration, and framework-aware tooling.

### 🎯 Key Features

- **Multi-Language Support**: TypeScript/JavaScript, Go, HTML/CSS, Vue.js, Svelte
- **AI-Powered Development**: GitHub Copilot integration
- **Framework Intelligence**: Auto-detection for Nuxt.js, Next.js, Express.js
- **Enhanced Tooling**: Mason, Treesitter, Telescope, Neo-tree
- **Web Development Focus**: Tailwind CSS support, auto-tag closing, Prettier formatting

## 🚀 Quick Start

#### Prerequisites Backup

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Installation

```shell
git clone <this-repository> ~/.config/nvim
nvim
```

Wait for initial plugin installation, then run `:Mason` to verify LSP servers and `:Copilot setup` for AI assistance.

## 📖 Documentation

For detailed features, keybindings, and customization options, see [SETUP.md](./SETUP.md).
