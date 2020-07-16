let
  pkgs = import <nixpkgs> { };
  release = import ./release.nix;
in pkgs.mkShell {
  buildInputs = release.env.nativeBuildInputs
    ++ (with pkgs.haskellPackages; [ cabal-install hlint stylish-haskell ]);
}
