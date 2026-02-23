return {
  cmd = { 'vscode-html-language-server', '--stdio' },
  filetypes = { 'html', 'templ', 'php' },
  root_markers = { 'package.json', '.git' },
  settings = {},
  init_options = {
    provideFormatter = true,
    embeddedLanguages = { css = true, javascript = true, php = true },
    configurationSection = { 'html', 'css', 'javascript' },
  },
}
