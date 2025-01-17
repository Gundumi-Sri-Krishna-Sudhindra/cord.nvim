local config = require 'cord.plugin.config'

local M = {}

M.default_icons = {
  language = 'text',
  file_browser = 'folder',
  plugin_manager = 'plugin',
  lsp = 'lsp',
  docs = 'book',
  vcs = 'git',
  notes = 'notes',
  debug = 'bug',
  test = 'tests',
  diagnostics = 'diagnostics',
  games = 'controller',
  terminal = 'shell',
  dashboard = 'dashboard',
}

M.filetype_mappings = {
  -- Languages
  ada = { 'language', 'ada', 'Ada' },
  angular = { 'language', 'htmlangular', 'Angular' },
  autohotkey = { 'language', 'ahk', 'AutoHotkey' },
  automake = { 'language', 'gnu', 'Automake' },
  asm = { 'language', 'assembly', 'Assembly' },
  asm68k = { 'language', 'assembly', 'Assembly' },
  asmh8300 = { 'language', 'assembly', 'Assembly' },
  astro = { 'language', 'astro', 'Astro' },
  awk = { 'language', 'awk', 'Awk' },
  c = { 'language', 'c', 'C ' },
  clojure = { 'language', 'clojure', 'Clojure' },
  conf = { 'language', 'gear', 'Config' },
  config = { 'language', 'gear', 'Config' },
  confini = { 'language', 'gear', 'INI' },
  cpp = { 'language', 'cpp', 'C++' },
  cr = { 'language', 'crystal', 'Crystal' },
  cs = { 'language', 'csharp', 'C#' },
  css = { 'language', 'css', 'CSS' },
  cuda = { 'language', 'nvidia', 'CUDA' },
  d = { 'language', 'd', 'D ' },
  dart = { 'language', 'dart', 'Dart' },
  django = { 'language', 'django', 'Django' },
  dockerfile = { 'language', 'docker', 'Docker' },
  dosbatch = { 'language', M.default_icons.terminal, 'Batch' },
  dosini = { 'language', 'gear', 'INI' },
  editorconfig = { 'language', 'editorconfig', 'EditorConfig' },
  elixir = { 'language', 'elixir', 'Elixir' },
  eelixir = { 'language', 'elixir', 'Embedded Elixir' },
  elm = { 'language', 'elm', 'Elm' },
  erlang = { 'language', 'erlang', 'Erlang' },
  fennel = { 'language', 'fennel', 'Fennel' },
  fish = { 'language', 'fishshell', 'Fish' },
  fortran = { 'language', 'fortran', 'Fortran' },
  git = { 'language', 'git', 'Git' },
  gitattributes = { 'language', 'git', 'Git' },
  gitconfig = { 'language', 'git', 'Git' },
  gitignore = { 'language', 'git', 'Git' },
  gitsendemail = { 'language', 'git', 'Git' },
  gleam = { 'language', 'gleam', 'Gleam' },
  glsl = { 'language', 'opengl', 'GLSL' },
  go = { 'language', 'go', 'Go' },
  graphql = { 'language', 'graphql', 'GraphQL' },
  groovy = { 'language', 'groovy', 'Groovy' },
  haskell = { 'language', 'haskell', 'Haskell' },
  hcl = { 'language', 'hashicorp', 'HCL' },
  heex = { 'language', 'phoenix', 'Phoenix' },
  hgcommit = { 'language', 'mercurial', 'Mercurial' },
  html = { 'language', 'html', 'HTML' },
  htmlcheetah = { 'language', 'python', 'Python Cheetah' },
  htmlm4 = { 'language', 'html', 'HTML M4' },
  hyprlang = { 'language', 'hyprland', 'Hyprland' },
  java = { 'language', 'java', 'Java' },
  javascript = { 'language', 'javascript', 'JavaScript' },
  javascriptreact = { 'language', 'react', 'JSX' },
  json = { 'language', 'json', 'JSON' },
  json5 = { 'language', 'json', 'JSON5' },
  jsonc = { 'language', 'json', 'JSON' },
  julia = { 'language', 'julia', 'Julia' },
  kotlin = { 'language', 'kotlin', 'Kotlin' },
  lisp = { 'language', 'lisp', 'Lisp' },
  logcheck = { 'language', 'logs', 'Logcheck' },
  lua = { 'language', 'lua', 'Lua' },
  make = { 'language', 'gnu', 'Makefile' },
  markdown = { 'language', 'markdown', 'Markdown' },
  matlab = { 'language', 'matlab', 'MATLAB' },
  nim = { 'language', 'nim', 'Nim' },
  nix = { 'language', 'nix', 'Nix' },
  nu = { 'language', 'nushell', 'Nushell' },
  obj = { 'language', 'assembly', 'Object' },
  objc = { 'language', 'c', 'Objective-C' },
  objcpp = { 'language', 'cpp', 'Objective-C++' },
  objdump = { 'language', 'assembly', 'Object Dump' },
  ocaml = { 'language', 'ocaml', 'OCaml' },
  odin = { 'language', 'odin', 'Odin' },
  pascal = { 'language', 'pascal', 'Pascal' },
  perl = { 'language', 'perl', 'Perl' },
  phtml = { 'language', 'php', 'PHP HTML' },
  php = { 'language', 'php', 'PHP' },
  plaintex = { 'language', 'latex', 'LaTeX' },
  ps1 = { 'language', 'powershell', 'PowerShell' },
  prisma = { 'language', 'prisma', 'Prisma' },
  python = { 'language', 'python', 'Python' },
  python2 = { 'language', 'python', 'Python' },
  quarto = { 'language', 'quarto', 'Quarto' },
  racket = { 'language', 'racket', 'Racket' },
  r = { 'language', 'r', 'R ' },
  requirements = { 'language', 'python', 'Python Requirements' },
  ruby = { 'language', 'ruby', 'Ruby' },
  rust = { 'language', 'rust', 'Rust' },
  scala = { 'language', 'scala', 'Scala' },
  sass = { 'language', 'scss', 'Sass' },
  scss = { 'language', 'scss', 'Sass' },
  sh = { 'language', M.default_icons.terminal, 'Shell script' },
  sshconfig = { 'language', M.default_icons.terminal, 'SSH Config' },
  sshdconfig = { 'language', M.default_icons.terminal, 'SSH Config' },
  sql = { 'language', 'sql', 'SQL' },
  squirrel = { 'language', 'squirrel', 'Squirrel' },
  svelte = { 'language', 'svelte', 'Svelte' },
  svg = { 'language', 'svg', 'SVG' },
  swift = { 'language', 'swift', 'Swift' },
  terraform = { 'language', 'terraform', 'Terraform' },
  tex = { 'language', 'latex', 'LaTeX' },
  texmf = { 'language', 'latex', 'LaTeX' },
  text = { 'language', M.default_icons.language, 'Plain Text' },
  toml = { 'language', 'toml', 'TOML' },
  tmux = { 'language', 'tmux', 'Tmux' },
  tt2html = { 'language', 'perl', 'Perl TT2 HTML' },
  typst = { 'language', 'typst', 'Typst' },
  typescript = { 'language', 'typescript', 'TypeScript' },
  typescriptreact = { 'language', 'react', 'TSX' },
  v = { 'language', 'v', 'V ' },
  vim = { 'language', 'viml', 'VimL' },
  viminfo = { 'language', 'viml', 'VimL' },
  vue = { 'language', 'vue', 'Vue' },
  winbatch = { 'language', M.default_icons.terminal, 'Batch' },
  xhtml = { 'language', 'html', 'XHTML' },
  xml = { 'language', 'xml', 'XML' },
  yaml = { 'language', 'yaml', 'YAML' },
  zig = { 'language', 'zig', 'Zig' },
  zsh = { 'language', M.default_icons.terminal, 'Zsh' },

  -- File Browsers
  carbon = { 'file_browser', M.default_icons.file_browser, 'Carbon' },
  CHADTree = { 'file_browser', M.default_icons.file_browser, 'ChadTree' },
  dirbuf = { 'file_browser', M.default_icons.file_browser, 'Dirbuf' },
  dirvish = { 'file_browser', M.default_icons.file_browser, 'Dirvish' },
  drex = { 'file_browser', M.default_icons.file_browser, 'Drex' },
  fern = { 'file_browser', M.default_icons.file_browser, 'Fern' },
  Fm = { 'file_browser', M.default_icons.file_browser, 'Fm' },
  fzf = { 'file_browser', M.default_icons.file_browser, 'FZF' },
  fzflua_backdrop = { 'file_browser', M.default_icons.file_browser, 'FZF' },
  lir = { 'file_browser', M.default_icons.file_browser, 'Lir' },
  oil = { 'file_browser', M.default_icons.file_browser, 'Oil' },
  oil_preview = { 'file_browser', M.default_icons.file_browser, 'Oil' },
  oil_progress = { 'file_browser', M.default_icons.file_browser, 'Oil' },
  nerdtree = { 'file_browser', M.default_icons.file_browser, 'NerdTree' },
  NNN = { 'file_browser', M.default_icons.file_browser, 'NNN' },
  NvimTree = { 'file_browser', M.default_icons.file_browser, 'nvim-tree' },
  minifiles = { 'file_browser', M.default_icons.file_browser, 'mini.files' },
  rnvimr = { 'file_browser', M.default_icons.file_browser, 'Ranger' },
  sfm = { 'file_browser', M.default_icons.file_browser, 'SFM' },
  TelescopePrompt = { 'file_browser', 'telescope', 'Telescope' },
  TelescopeResults = { 'file_browser', 'telescope', 'Telescope' },
  tfm = { 'file_browser', M.default_icons.file_browser, 'TFM' },
  triptych_backdrop = {
    'file_browser',
    M.default_icons.file_browser,
    'Triptych',
  },
  Yanil = { 'file_browser', M.default_icons.file_browser, 'Yanil' },
  yazi = { 'file_browser', M.default_icons.file_browser, 'Yazi' },
  ['neo-tree'] = { 'file_browser', M.default_icons.file_browser, 'Neo-Tree' },

  -- Plugin Managers
  lazy = { 'plugin_manager', M.default_icons.plugin_manager, 'Lazy' },
  pckr = { 'plugin_manager', M.default_icons.plugin_manager, 'Packer' },
  packer = { 'plugin_manager', M.default_icons.plugin_manager, 'Packer' },
  ['minideps-confirm'] = {
    'plugin_manager',
    M.default_icons.plugin_manager,
    'mini.deps',
  },

  -- LSP Managers
  mason = { 'lsp', M.default_icons.lsp, 'Mason' },
  lspinfo = { 'lsp', M.default_icons.lsp, 'LSP Info' },

  -- Docs
  help = { 'docs', M.default_icons.docs, 'Vim documentation' },
  help_ru = { 'docs', M.default_icons.docs, 'Vim documentation' },
  man = { 'docs', M.default_icons.docs, 'Man pages' },

  -- VCS
  magit = { 'vcs', M.default_icons.vcs, 'Magit' },
  gitcommit = { 'vcs', M.default_icons.vcs, 'Git' },
  gitrebase = { 'vcs', M.default_icons.vcs, 'Git' },
  fugitive = { 'vcs', M.default_icons.vcs, 'Fugitive' },
  fugitiveblame = { 'vcs', M.default_icons.vcs, 'Fugitive' },
  lazygit = { 'vcs', M.default_icons.vcs, 'Lazygit' },
  NeogitCommitSelectView = { 'vcs', M.default_icons.vcs, 'Neogit' },
  NeogitCommitView = { 'vcs', M.default_icons.vcs, 'Neogit' },
  NeogitConsole = { 'vcs', M.default_icons.vcs, 'Neogit' },
  NeogitDiffView = { 'vcs', M.default_icons.vcs, 'Neogit' },
  NeogitGitCommandHistory = { 'vcs', M.default_icons.vcs, 'Neogit' },
  NeogitLogView = { 'vcs', M.default_icons.vcs, 'Neogit' },
  NeogitPopup = { 'vcs', M.default_icons.vcs, 'Neogit' },
  NeogitRefsView = { 'vcs', M.default_icons.vcs, 'Neogit' },
  NeogitReflogView = { 'vcs', M.default_icons.vcs, 'Neogit' },
  NeogitStashView = { 'vcs', M.default_icons.vcs, 'Neogit' },
  NeogitStatus = { 'vcs', M.default_icons.vcs, 'Neogit' },
  ['git.nvim'] = { 'vcs', M.default_icons.vcs, 'Git.nvim' },

  -- Notes
  norg = { 'notes', 'neorg', 'Neorg' },
  note = { 'notes', M.default_icons.notes, 'Note.nvim' },
  org = { 'notes', 'org', 'Orgmode' },
  ['org-roam-node-buffer'] = { 'notes', 'org', 'Orgmode' },
  ['org-roam-select'] = { 'notes', 'org', 'Orgmode' },

  -- Dashboard
  alpha = { 'dashboard', M.default_icons.dashboard, 'Alpha' },
  dashboard = { 'dashboard', M.default_icons.dashboard, 'Dashboard' },
  dashboardpreview = { 'dashboard', M.default_icons.dashboard, 'Dashboard' },
  ministarter = { 'dashboard', M.default_icons.dashboard, 'mini.starter' },
  nvdash = { 'dashboard', M.default_icons.dashboard, 'NvDash' },
  profile = { 'dashboard', M.default_icons.dashboard, 'Profile' },
  snacks_dashboard = {
    'dashboard',
    M.default_icons.dashboard,
    'Snacks Dashboard',
  },
  spaceport = { 'dashboard', M.default_icons.dashboard, 'Spaceport' },
  startify = { 'dashboard', M.default_icons.dashboard, 'Startify' },
  startup = { 'dashboard', M.default_icons.dashboard, 'Startup' },
  veil = { 'dashboard', M.default_icons.dashboard, 'Veil' },

  -- Debug
  dapui_console = { 'debug', M.default_icons.debug, 'DAP' },
  dapui_hover = { 'debug', M.default_icons.debug, 'DAP' },
  dapui_scopes = { 'debug', M.default_icons.debug, 'DAP' },
  dapui_stacks = { 'debug', M.default_icons.debug, 'DAP' },
  dapui_watches = { 'debug', M.default_icons.debug, 'DAP' },
  nvimgdb = { 'debug', M.default_icons.debug, 'GNU Debugger' },
  ['dap-float'] = { 'debug', M.default_icons.debug, 'DAP' },
  ['dap-repl'] = { 'debug', M.default_icons.debug, 'DAP' },

  -- Test
  coverage = { 'test', M.default_icons.test, 'Coverage' },
  ['neotest-attach'] = { 'test', M.default_icons.test, 'Neotest' },
  ['neotest-output'] = { 'test', M.default_icons.test, 'Neotest' },
  ['neotest-output-panel'] = { 'test', M.default_icons.test, 'Neotest' },
  ['neotest-summary'] = { 'test', M.default_icons.test, 'Neotest' },
  ['quicktest-output'] = { 'test', M.default_icons.test, 'Quicktest' },

  -- Diagnostics
  trouble = { 'diagnostics', M.default_icons.diagnostics, 'Trouble' },

  -- Games
  sudoku = { 'games', M.default_icons.games, 'Sudoku' },
  tetris = { 'games', M.default_icons.games, 'Tetris' },

  -- Terminal
  FTerm = { 'terminal', M.default_icons.terminal, 'FTerm' },
  fterm_gitui = { 'terminal', M.default_icons.terminal, 'Fterm' },
  kitty = { 'terminal', M.default_icons.terminal, 'Kitty' },
  neaterm = { 'terminal', M.default_icons.terminal, 'NeaTerm' },
  nterm = { 'terminal', M.default_icons.terminal, 'Nterm' },
  oneterm = { 'terminal', M.default_icons.terminal, 'OneTerm' },
  snacks_terminal = { 'terminal', M.default_icons.terminal, 'Snacks Terminal' },
  terminal = { 'terminal', M.default_icons.terminal, 'Terminal' },
  toggleterm = { 'terminal', M.default_icons.terminal, 'ToggleTerm' },
  ['kitty-scrollback'] = { 'terminal', M.default_icons.terminal, 'Kitty' },
  ['neo-term'] = { 'terminal', M.default_icons.terminal, 'NeoTerm' },
  ['yeet-cache'] = { 'terminal', M.default_icons.terminal, 'Yeet' },
}

M.filename_mappings = {
  -- Languages
  ['.gemignore'] = { 'language', 'rubygems', 'RubyGems' },
  ['.npmrc'] = { 'language', 'npm', 'npm' },
  ['.npmignore'] = { 'language', 'npm', 'npm' },
  ['build.gradle'] = { 'language', 'gradle', 'Gradle' },
  ['build.gradle.kts'] = { 'language', 'gradle', 'Gradle' },
  ['cargo.toml'] = { 'language', 'cargo', 'Cargo' },
  ['gemfile'] = { 'language', 'rubygems', 'RubyGems' },
  ['license'] = { 'language', 'license', 'License file' },
  ['license.md'] = { 'language', 'license', 'License file' },
  ['license.txt'] = { 'language', 'license', 'License file' },
  ['package.json'] = { 'language', 'npm', 'npm' },
  ['pom.xml'] = { 'language', 'maven', 'Maven' },
  ['settings.gradle'] = { 'language', 'gradle', 'Gradle' },
  ['settings.gradle.kts'] = { 'language', 'gradle', 'Gradle' },
  ['vue.config.js'] = { 'language', 'vue', 'Vue' },
}

M.extension_mappings = {
  -- Languages
  ['.bmp'] = { 'language', 'picture', 'BMP' },
  ['.fs'] = { 'language', 'fsharp', 'F#' },
  ['.fsi'] = { 'language', 'fsharp', 'F#' },
  ['.fsscript'] = { 'language', 'fsharp', 'F#' },
  ['.fsx'] = { 'language', 'fsharp', 'F#' },
  ['.gem'] = { 'language', 'rubygems', 'RubyGems' },
  ['.gemspec'] = { 'language', 'rubygems', 'RubyGems' },
  ['.gd'] = { 'language', 'godot', 'Godot' },
  ['.godot'] = { 'language', 'godot', 'Godot' },
  ['.gif'] = { 'language', 'picture', 'GIF' },
  ['.gml'] = { 'language', 'gml', 'GameMaker Language' },
  ['.heif'] = { 'language', 'picture', 'HEIF' },
  ['.hx'] = { 'language', 'haxe', 'Haxe' },
  ['.hxml'] = { 'language', 'haxe', 'Haxe' },
  ['.ico'] = { 'language', 'picture', 'ICO' },
  ['.ipynb'] = { 'language', 'jupyter', 'Jupyter Notebook' },
  ['.jpeg'] = { 'language', 'picture', 'JPEG' },
  ['.jpg'] = { 'language', 'picture', 'JPEG' },
  ['.lock'] = { 'language', 'lock', 'Lockfile' },
  ['.log'] = { 'language', 'logs', 'Logs' },
  ['.module.ts'] = { 'language', 'angular', 'Angular' },
  ['.module.js'] = { 'language', 'angular', 'Angular' },
  ['.component.ts'] = { 'language', 'angular', 'Angular' },
  ['.component.js'] = { 'language', 'angular', 'Angular' },
  ['.component.html'] = { 'language', 'angular', 'Angular' },
  ['.component.css'] = { 'language', 'angular', 'Angular' },
  ['.component.scss'] = { 'language', 'angular', 'Angular' },
  ['.component.less'] = { 'language', 'angular', 'Angular' },
  ['.component.spec'] = { 'language', 'angular', 'Angular' },
  ['.service.ts'] = { 'language', 'angular', 'Angular' },
  ['.service.js'] = { 'language', 'angular', 'Angular' },
  ['.directive.ts'] = { 'language', 'angular', 'Angular' },
  ['.directive.js'] = { 'language', 'angular', 'Angular' },
  ['.pipe.ts'] = { 'language', 'angular', 'Angular' },
  ['.pipe.js'] = { 'language', 'angular', 'Angular' },
  ['.guard.ts'] = { 'language', 'angular', 'Angular' },
  ['.guard.js'] = { 'language', 'angular', 'Angular' },
  ['.interceptor.ts'] = { 'language', 'angular', 'Angular' },
  ['.interceptor.js'] = { 'language', 'angular', 'Angular' },
  ['.model.ts'] = { 'language', 'angular', 'Angular' },
  ['.model.js'] = { 'language', 'angular', 'Angular' },
  ['.interface.ts'] = { 'language', 'angular', 'Angular' },
  ['.interface.js'] = { 'language', 'angular', 'Angular' },
  ['.pcss'] = { 'language', 'postcss', 'PostCSS' },
  ['.png'] = { 'language', 'picture', 'PNG' },
  ['.postcss'] = { 'language', 'postcss', 'PostCSS' },
  ['.tiff'] = { 'language', 'picture', 'TIFF' },
  ['.vapi'] = { 'language', 'vala', 'Vala' },
  ['.vala'] = { 'language', 'vala', 'Vala' },
  ['.webp'] = { 'language', 'picture', 'WebP' },
}

M.cord_related = {
  ['Cord.new'] = { 'language', M.default_icons.language, 'New file' },
  ['Cord.unknown'] = { 'language', M.default_icons.language, 'Unknown' },
}

M.get_default_icon = function(type) return M.default_icons[type] or M.default_icons.language end

M.get = function(filetype, filename, buftype)
  if buftype == 'terminal' then return 'terminal', M.default_icons.terminal, 'Terminal' end

  local result = M.filename_mappings[filename:lower()]
  if result then return result[1], result[2], result[3] end

  if config.advanced.plugin.match_in_mappings then
    local extension = filename:match '%..*$'
    if extension then
      result = M.extension_mappings[extension]
      if result then return result[1], result[2], result[3] end
    end
  end

  local result = M.filetype_mappings[filetype]
  if result then return result[1], result[2], result[3] end

  local result = M.cord_related[filetype]
  if result then return result[1], result[2], result[3] end
end

return M
