local ok, surround = pcall(require, "surround")

if not ok then
    return
end

surround.setup { mappings_style = "surround" }
