{ pkgs, ... }:

{

  home.stateVersion = "25.05";

  users.users.servernixos = 
  {
    isNormalUser = true;
    extraGroups = [ "wheel" "dialout" ];
  };

  home.packages = with pkgs; 
  [
    tree
    util-linux
    vim
    wget
    curl
    git
    gptfdisk
    htop
    fastfetch
    sops
    pciutils
    home-manager
  
    cloudflared
  ];
}
