{ stdenv, fetchurl, gtk, pkgconfig, gnome }:

stdenv.mkDerivation rec {
  name = "parcellite-1.0.2rc5";

  src = fetchurl {
    url = "mirror://sourceforge/parcellite/${name}.tar.gz";
    sha256 = "6e7388093b76a6873aa237ea89bf941e0c1b1541a7793c23cf6ec72db93f5fc6";
  };
 
  buildInputs = [ gtk pkgconfig gnome.intltool ];

  patches = [ ./fix-glib-include.patch ];
}
