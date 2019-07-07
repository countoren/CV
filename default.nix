{ pkgs ? import <nixpkgs> {} }:

with pkgs;
stdenv.mkDerivation {
  name = "orenCV";
  src = ./.;
  buildInputs = [
    texlive.combined.scheme-full
  ];
  buildPhase = ''
    pdflatex $src/main.tex
  '';
  installPhase = ''
    cp main.pdf $out
  '';
}

