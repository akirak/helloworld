let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {

    buildInputs = with pkgs; [
      ghc
      cabal2nix
      cabal-install
      nix-prefetch-git
    ];
  }
