# nixvim

My personal Neovim configuration using [Nixvim](https://github.com/nix-community/nixvim).

## Usage

### Standalone

Run directly without installation:

```bash
nix run github:leonwip/nixvim
```

Or from checked out sources:

```bash
nix run .#default
```

### Home Manager module

Add to `flake.nix`:

```nix
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:leonwip/nixvim";
  };
}
```

Add import to `home.nix` or equivalent:

```nix
{ nixvim, ... }: {
  imports = [
    nixvim.homeManagerModules.default
  ];
}
```
