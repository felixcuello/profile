--
-- LSP Configuration for Rust
--
return {
  cmd = { 'rust-analyzer' },
  root_markers = { 'Cargo.toml', 'rust-project.json' },
  filetypes = { 'rust' },
}
