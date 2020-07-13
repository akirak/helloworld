{ mkDerivation, aeson, base, hpack, hspec, hspec-wai
, hspec-wai-json, servant-server, stdenv, wai, warp
}:
mkDerivation {
  pname = "servant-demo";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ aeson base servant-server wai warp ];
  libraryToolDepends = [ hpack ];
  executableHaskellDepends = [ aeson base servant-server wai warp ];
  testHaskellDepends = [
    aeson base hspec hspec-wai hspec-wai-json servant-server wai warp
  ];
  prePatch = "hpack";
  homepage = "https://github.com/akirak/servant-demo#readme";
  license = stdenv.lib.licenses.bsd3;
}
