# AstroNvim Web Development Configuration

This Neovim configuration is optimized for web development with Nuxt, Next.js, TypeScript, Go, and Tailwind CSS.

## Features

### Language Support
- **TypeScript/JavaScript**: Full LSP support with inlay hints
- **Go**: Complete development environment with gofumpt and goimports
- **HTML/CSS/SCSS**: Enhanced editing with Tailwind CSS support
- **Vue.js**: Syntax highlighting and language server (without Volar)
- **Svelte**: Full framework support

### Key Plugins
- **GitHub Copilot**: AI-powered code completion
- **Mason**: Automatic LSP server installation
- **Treesitter**: Advanced syntax highlighting
- **Telescope**: Fuzzy finder for files and text
- **Neo-tree**: File explorer
- **Gitsigns**: Git integration

### Web Development Enhancements
- Auto-tag closing for HTML/JSX
- Tailwind CSS color previews
- Package.json dependency management
- Framework auto-detection (Nuxt/Next.js/Express)
- Prettier formatting with custom settings
- ESLint integration

## Key Mappings

### Leader Key: `<Space>`

### General
- `<Leader>w` - Save file
- `<Leader>q` - Quit with confirmation
- `<Leader>/` - Toggle comment (normal/visual mode)

### Navigation
- `<C-h/j/k/l>` - Move between splits
- `<C-Up/Down/Left/Right>` - Resize splits
- `]b` / `[b` - Next/Previous buffer

### File Operations
- `<Leader>ff` - Find files
- `<Leader>fg` - Live grep
- `<Leader>fb` - Find buffers
- `<Leader>e` - Toggle file explorer

### LSP
- `gd` - Go to definition
- `gD` - Go to declaration
- `gI` - Go to implementation
- `gr` - Find references
- `K` - Hover documentation
- `<Leader>la` - Code actions
- `<Leader>lr` - Rename symbol
- `<Leader>lf` - Format buffer
- `<Leader>ld` - Show diagnostics
- `[d` / `]d` - Previous/Next diagnostic

### GitHub Copilot
- `<C-j>` - Accept suggestion
- `<C-l>` - Accept word
- `<C-;>` - Next suggestion
- `<C-,>` - Previous suggestion
- `<C-o>` - Dismiss suggestion

## Installed Tools

The configuration automatically installs:

### Language Servers
- TypeScript Language Server
- Go Language Server (gopls)
- Tailwind CSS Language Server
- HTML/CSS/JSON/YAML Language Servers
- ESLint Language Server

### Formatters
- Prettier (for JS/TS/HTML/CSS)
- Stylua (for Lua)
- gofumpt & goimports (for Go)

### Linters
- ESLint (with auto-detection)

## Framework Detection

The configuration automatically detects your project type:
- **Nuxt.js**: When `nuxt.config.js/ts` is present
- **Next.js**: When `next.config.js/ts` is present
- **Express.js**: When Express is in package.json
- **Go**: When `go.mod` is present

## Getting Started

1. Launch Neovim: `nvim`
2. Wait for plugins to install (first launch only)
3. Run `:Mason` to verify LSP servers are installed
4. For Copilot: Run `:Copilot setup` to authenticate

## Customization

- Core settings: `lua/plugins/astrocore.lua`
- LSP configuration: `lua/plugins/astrolsp.lua`
- Additional plugins: `lua/plugins/user.lua`
- Framework-specific: `lua/plugins/framework-config.lua`

## Tips

- Use `<Leader>` (Space) + key to discover available commands
- The status line shows current LSP status and Git branch
- Treesitter provides context-aware commenting
- Auto-completion includes Copilot suggestions
- Format on save is enabled for supported file types