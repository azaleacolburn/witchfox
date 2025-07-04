{
  description = "potatofox";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    systems.url = "github:nix-systems/default";
  };

  outputs =
    inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = import inputs.systems;

      perSystem =
        { pkgs, ... }:
        {
          formatter = pkgs.treefmt.withConfig {
            runtimeInputs = with pkgs; [
              nixfmt-rfc-style
              deadnix
              prettier
            ];

            settings = {
              on-unmatched = "info";
              tree-root-file = "flake.nix";

              formatter = {
                nixfmt = {
                  command = "nixfmt";
                  includes = [ "*.nix" ];
                };
                deadnix = {
                  command = "deadnix";
                  includes = [ "*.nix" ];
                };
                prettier = {
                  command = "prettier";
                  includes = [ "*.css" ];
                };
              };
            };
          };
        };

      flake.homeModules = rec {
        default = potatofox;
        potatofox = import ./homeModule.nix;
      };
    };
}
