# Minetest Game PKGBUILDs
This is a repository containing PKGBUILDs for (not quite) every Minetest game that exists on the ContentDB, which is buildscripts for creating Arch packages.

## Building
### AUR
All of these packages exist on the [AUR](https://aur.archlinux.org), you can build and install them using your favorite AUR helper.

### Manually
If you'd like to manually build one from this repository, clone the repository and follow [the instructions on the Arch wiki for building packages.](https://wiki.archlinux.org/title/Arch_User_Repository#Installing_and_upgrading_packages)

## Reporting outdated/missing packages
If there's a new version of a game, or a new game on ContentDB, simply open an issue on this repository. Flagging the corresponding package on the AUR works as well.

You can also open a PR with the necessary updates. Don't forget to update `.SRCINFO` using `makepkg --printsrcinfo > .SRCINFO`
