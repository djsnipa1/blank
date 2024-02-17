{ pkgs }: {
    deps = [
      pkgs.neovim
      pkgs.pastel
    # pkgs.pastebinit
      pkgs.zip
      pkgs.nodePackages.pnpm
      pkgs.nodejs_21
      pkgs.lf
      pkgs.lazygit
      pkgs.eza
    # pkgs.nodePackages.diff2html-cli
    # pkgs.httplz
      pkgs.gh
    ];
}
