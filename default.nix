with (import <nixpkgs>) {};
let
  tex = pkgs.texlive.combine {
    inherit (pkgs.texlive)
        scheme-tetex
        collection-fontsextra
        collection-fontsrecommended
        xetex
        polyglossia
        xstring
        euenc
        xunicode
        xetex-def
        enumitem
        logreq
        bibtex
        biblatex
        biber
        wrapfig;

  };
in
stdenv.mkDerivation {
  name = "vitatex";
  propagatedBuildInputs = [ tex libertine  pkgs.biber ];
}
