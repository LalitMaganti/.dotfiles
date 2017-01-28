# For all Arch Linux installs.
set MAKEFLAGS "-j"(nproc)

# Set environment vars
set RUST_SRC_PATH /home/lalit/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/
set fish_user_paths $fish_user_paths $HOME/.cabal/bin $HOME/.local/bin $HOME/.cargo/bin
set EDITOR nvim
