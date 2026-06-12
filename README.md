# ADE Homebrew Tap

Official Homebrew tap for [ADE](https://github.com/arul28/ADE) — the agent development environment.

## Install

```bash
brew install --cask arul28/ade/ade
```

This installs the same signed + notarized universal DMG published on
[GitHub Releases](https://github.com/arul28/ADE/releases/latest) and places
**ADE.app** in `/Applications`, exactly like a manual DMG install. ADE keeps
itself current afterwards through its built-in auto-updater.

## Upgrade / uninstall

```bash
brew upgrade --cask ade     # pick up a newer cask version
brew uninstall --cask ade   # remove the app
brew uninstall --cask ade --zap   # remove the app plus local ADE state
```

The cask version is bumped automatically as part of the ADE release flow.
