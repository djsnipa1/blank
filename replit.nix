# ╔═════════════════════════════════╗
# ║           replit.nix            ║
# ╚═════════════════════════════════╝

{pkgs}: {
  deps = with pkgs; [
    nodejs-slim
    unzip
    fd
    neovim
    pastel
    pastebinit
    zip
    nodePackages.pnpm
    lf
    lazygit
    eza
    httplz
    gh
    nodePackages.svelte-language-server
    nodePackages.vscode-html-languageserver-bin
    nodePackages.vscode-css-languageserver-bin
  ];
}
