return {
  cmd = { 'vscode-html-language-server', '--stdio' },
  filetypes = { 'html', 'templ', 'php', 'blade' },
  root_markers = { 'package.json', '.git' },
  settings = {},
  init_options = {
    provideFormatter = true,
    embeddedLanguages = { css = true, javascript = true, php = true, blade = true },
    configurationSection = { 'html', 'css', 'javascript', 'blade' },
  },
}
