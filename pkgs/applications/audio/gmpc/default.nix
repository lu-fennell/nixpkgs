{ stdenv
, fetchurl
, pkgconfig
, glib
, gtk
, gnome
, gob2
, curl
, avahi
, libmpd
, sqlite
, vala
}:

let
  majorVersion = "11.8";
  minorVersion = "16";
  version = majorVersion + "." + minorVersion;
  pkgname = "gmpc";
in
stdenv.mkDerivation {
  name = "gmpc-${version}";

  src = fetchurl {
    url = "http://download.sarine.nl/Programs/${pkgname}/${majorVersion}/${pkgname}-${version}.tar.gz";
    sha256 = "a69414f35396846733632ca9619921d7acda537ffd6d49bd84b444945cb76b2c";
  };

  buildInputs =
    [ avahi 
      curl 
      glib 
      gob2
      gtk 
      gnome.libsoup 
      gnome.intltool 
      libmpd 
      gnome.libunique 
      pkgconfig 
      sqlite
      vala
    ];

  enableParallelBuilding = true;

  meta = {
    description = "GKT+ MPC front-end";
    homepage = http://ario-player.sourceforge.net/index.php;
  };
}
