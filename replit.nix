{ pkgs }: {
    deps = [
      pkgs.pastel
      pkgs.pastebinit
    #  pkgs.neovim
      pkgs.zip
      pkgs.nodePackages.pnpm
      pkgs.nodejs-slim_21
      pkgs.lf
      pkgs.lazygit
      pkgs.eza
      pkgs.nodePackages.diff2html-cli
      pkgs.httplz
      pkgs.wget
    ];
}