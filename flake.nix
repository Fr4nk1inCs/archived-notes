{
  description = "A flake for writing a online typst book using the tool shiroa";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    nixpkgs,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;
      };
      shiroa = pkgs.callPackage (import ./flakes/shiroa.nix) {};
      otf-fandol = pkgs.callPackage (import ./flakes/otf-fandol.nix) {};
      nativeBuildInputs = [shiroa otf-fandol pkgs.libertinus];
    in {
      devShells.default = pkgs.mkShell {
        name = "archived-notes";
        packages = nativeBuildInputs ++ [pkgs.typst];
      };

      # packages.default = pkgs.stdenvNoCC.mkDerivation {
      #   name = "archived-notes";
      #
      #   inherit nativeBuildInputs;
      #
      #   src = ./.;
      #
      #   sourceRoot = ".";
      #
      #   buildPhase = ''
      #     shiroa build --workspace $src
      #   '';
      #
      #   installPhase = ''
      #     cp -R dist $out
      #   '';
      # };
    });
}
