FROM lnl7/nix:2.2

RUN nix-env -iA \
 nixpkgs.texlive.combined.scheme-medium
