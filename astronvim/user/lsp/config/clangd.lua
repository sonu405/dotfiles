-- the offset_encondings of clangd will confilicts whit null-ls, so add the following file in your user_config.
return {
  capabilities = {
    offsetEncoding = "utf-8",
  },
}
