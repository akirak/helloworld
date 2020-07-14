let
  pkgs = import <nixpkgs> { };
  release = import ./release.nix;
in pkgs.mkShell
  {
  buildInputs = release.env.nativeBuildInputs
    ++ [ pkgs.haskellPackages.cabal-install ];
}
