{ pkgs }: {
    deps = [
      pkgs.nodePackages.pnpm
      pkgs.nodejs-slim_21
      pkgs.lf
      pkgs.lazygit
      pkgs.eza
    ];
}