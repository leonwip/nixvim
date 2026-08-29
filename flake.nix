{
  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    {
      self,
      nixvim,
      nixpkgs,
    }:
    let
      forAllSystems = nixpkgs.lib.genAttrs [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
    in
    {
      nixvimModule = import ./config.nix;

      packages = forAllSystems (
        system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          default = nixvim.legacyPackages.${system}.makeNixvimWithModule {
            inherit pkgs;
            module = self.nixvimModule;
          };
        }
      );
    };
}
