pkgs: withGUI: with pkgs; [
  # these files are meant to be installed in all scenarios
  bat
  binutils
  bottom
  cabal-install
  cargo
  cmake

  dbus
  direnv
  enlightenment.terminology
  exa
  fd
  firefox
  git
  gitAndTools.hub
  ghc
  glances
  gnupg                         # gpg command
  gnumake
  hicolor-icon-theme # lutris
  htop

  manix
  mono
  nerdfonts
  nix-index
  nix-update
  nixpkgs-review
  nodejs # needed for coc vim plugins
  ntfs3g
  openal
  perl # for fzf history
  python3
  ranger
  rnix-lsp
  rustc
  # stack broken

  tree
  usbutils
  wget

  # vim plugin dependencies
  fzf
  ripgrep

  #haskell dependencies
  haskellPackages.hlint

  # dotnet
  (with dotnetCorePackages; combinePackages [
    sdk_2_1
    sdk_3_0
    sdk_3_1
  ])
] ++ pkgs.lib.optionals withGUI [
  # intended to be installed with an X11 or wayland session
  chromium
  discord
  dwarf-fortress-packages.dwarf-fortress-full
  hexchat
  jetbrains.pycharm-community
  jetbrains.rider
  pavucontrol  # pulseaudio configuration
  lutris
  shutter # screenshots
  spotify
  steam
  teams
  vlc
]

