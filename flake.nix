{
  description = "XMonad ruzen42 config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
    forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
  in {
    nixosModules.default = { config, pkgs, ... }: {
      services.xserver = {
        enable = true;
        windowManager.xmonad = {
          enable = true;
          enableContribAndExtras = true;
          haskellPackages = pkgs.haskellPackages.override { overrides = self: super: {
            xmonad-config = self.callCabal2nix "xmonad-config" ./.; };
            };

          config = builtins.readFile ./xmonad.hs;
        };
      };
      systemd.user.services.xmonad.environment.XMONAD_GHC_ARGS = "-i${./.}/lib";
    };

    packages = forAllSystems (system: {
      default = nixpkgs.legacyPackages.${system}.xmonad-with-packages.override {
        packages = p: [ p.xmonad-contrib p.xmonad-extras ];
      };
    });
  };
}
