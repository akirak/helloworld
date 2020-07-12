{ mkDerivation, base, hpack, hspec, optparse-simple, rio, stdenv }:
mkDerivation {
  pname = "rio-demo";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base rio ];
  libraryToolDepends = [ hpack ];
  executableHaskellDepends = [ base optparse-simple rio ];
  testHaskellDepends = [ base hspec rio ];
  prePatch = "hpack";
  homepage = "https://github.com/akirak/rio-demo#readme";
  license = stdenv.lib.licenses.bsd3;
}
