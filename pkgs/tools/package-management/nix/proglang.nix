{ stdenv, callPackage, fetchurl, perl, curl, bzip2, sqlite, openssl ? null
, pkgconfig, boehmgc, perlPackages
}:

 callPackage ./unstable.nix {
    storeDir = "/home/proglang/nix/store";
    stateDir = "/home/proglang/nix/var";
  }
