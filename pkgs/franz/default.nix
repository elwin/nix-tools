# This file was generated by GoReleaser. DO NOT EDIT.
# vim: set ft=nix ts=2 sw=2 sts=2 et sta
{ system ? builtins.currentSystem, pkgs, lib, fetchurl, installShellFiles }:
let
  shaMap = {
    i686-linux = "0aq0qyj67ihbir9316wkw1jqlr07a227rbc7da557jnf0yifd3k2";
    x86_64-linux = "0l5nqfshnsky81b06ihzmyjj962gjhaaz0mj2qair7wrvkdc7w5r";
    aarch64-linux = "05nffca6r2saa6hiqdqhm9ls6qrwaamqzlq8n3951gllaj4nmlb0";
    x86_64-darwin = "0vwzd9r3gmlkw76al7gfd800dz94v06zsbyp8vyq7fpzlpfkpbkm";
    aarch64-darwin = "0zq73fvs0qcz1gpfzfnq12c57ybwjn91rlshyrcvwyy3hz1428w5";
  };

  urlMap = {
    i686-linux = "https://github.com/elwin/franz/releases/download/v1.0.9/franz_Linux_i386.tar.gz";
    x86_64-linux = "https://github.com/elwin/franz/releases/download/v1.0.9/franz_Linux_x86_64.tar.gz";
    aarch64-linux = "https://github.com/elwin/franz/releases/download/v1.0.9/franz_Linux_arm64.tar.gz";
    x86_64-darwin = "https://github.com/elwin/franz/releases/download/v1.0.9/franz_Darwin_x86_64.tar.gz";
    aarch64-darwin = "https://github.com/elwin/franz/releases/download/v1.0.9/franz_Darwin_arm64.tar.gz";
  };
in pkgs.stdenv.mkDerivation {
  pname = "franz";
  version = "1.0.9";
  src = fetchurl {
    url = urlMap.${system};
    sha256 = shaMap.${system};
  };

  sourceRoot = ".";

  nativeBuildInputs = [ installShellFiles ];

  installPhase = ''
    mkdir -p $out/bin
    cp -vr ./franz $out/bin/franz
  '';

  system = system;

  meta = with lib; {
    description = "Your Swiss-Army Knife tool for interacting with Kafka.";
    homepage = "https://github.com/elwin/franz";

    platforms = [
      "aarch64-darwin"
      "aarch64-linux"
      "i686-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];
  };
}
