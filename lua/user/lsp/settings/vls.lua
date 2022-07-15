local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return {
  config = {
    css = {},
    emmet = {},
    html = {
      suggest = {},
    },
    javascript = {
      format = {},
    },
    stylusSupremacy = {},
    typescript = {
      format = {},
    },
    vetur = {
      completion = {
        autoImport = true,
        tagCasing = "kebab",
        useScaffoldSnippets = true,
      },
      format = {
        defaultFormatter = {
          js = "prettier",
          ts = "prettier",
        },
        defaultFormatterOptions = {},
        scriptInitialIndent = false,
        styleInitialIndent = false,
      },
      useWorkspaceDependencies = true,
      validation = {
        script = true,
        style = true,
        template = true,
      },
    },
  },
}
