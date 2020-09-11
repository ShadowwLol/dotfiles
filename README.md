# dotfiles
All my dotfiles 🤡

## To install all packages from the PACKAGES.md file run:
`sudo pacman -S $(sed "s/[0-9]//g;s/\ //g;s/\.//g;s/://g;s/\ /\n/g;s/\ //g;s/.$//" PACKAGES.md)`
