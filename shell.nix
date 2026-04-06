{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell { 
    buildInputs = [ 
        pkgs.python312
        pkgs.python312Packages.pip # We ensure that pip is for version 3.12
        pkgs.python312Packages.virtualenv # Recommended to avoid soiling the shell
		pkgs.python312Packages.colorama 
		pkgs.python312Packages.pwinput 
		pkgs.python312Packages.requests
		pkgs.python312Packages.python-dotenv
        pkgs.git
        pkgs.lazygit
    ]; 
    # This helps C libraries compile well on Nix
    shellHook = ''
      echo "--- Python 3.12 Environment Enabled ---"
    '';
}
