{ cabal, aeson, blazeBuilder, blazeHtml, blazeMarkup
, caseInsensitive, cereal, clientsession, conduit, cookie, failure
, fastLogger, hamlet, httpTypes, liftedBase, monadControl
, monadLogger, parsec, pathPieces, random, resourcet, shakespeare
, shakespeareCss, shakespeareI18n, shakespeareJs, text, time
, transformers, transformersBase, vector, wai, waiExtra
, yesodRoutes
}:

cabal.mkDerivation (self: {
  pname = "yesod-core";
  version = "1.1.6";
  sha256 = "1y7bw0wzi52mnvs0zf93q8aiq87mnn2j4f2ry4y2f859xfdzbvsi";
  buildDepends = [
    aeson blazeBuilder blazeHtml blazeMarkup caseInsensitive cereal
    clientsession conduit cookie failure fastLogger hamlet httpTypes
    liftedBase monadControl monadLogger parsec pathPieces random
    resourcet shakespeare shakespeareCss shakespeareI18n shakespeareJs
    text time transformers transformersBase vector wai waiExtra
    yesodRoutes
  ];
  meta = {
    homepage = "http://www.yesodweb.com/";
    description = "Creation of type-safe, RESTful web applications";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
