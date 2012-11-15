{ stdenv
, fetchurl
, pkgconfig
, glib
}:

let
  majorVersion = "11.8";
  minorVersion = "17";
  version = majorVersion + "." + minorVersion;
  pkgname = "libmpd";
in
stdenv.mkDerivation {
  name = "${pkgname}-${version}";

  src = fetchurl {
    url = "http://download.sarine.nl/Programs/gmpc/${majorVersion}/${pkgname}-${version}.tar.gz";
    sha256 = "fe20326b0d10641f71c4673fae637bf9222a96e1712f71f170fca2fc34bf7a83";
  };

  buildInputs =
    [ 
      glib 
      pkgconfig 
    ];

  enableParallelBuilding = true;

  meta = {
    description = "Signal based wrapper around libmpdclient";
    homepage = http://gmpc.wikia.com/wiki/Gnome_Music_Player_Client;
  };
}
