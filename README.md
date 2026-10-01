# Tumerit Homebrew Tap

Install [Tethered](https://www.tetheredmac.com/), a battery and power management app for Mac:

```sh
brew install --cask Tumerit/tap/tethered
```

Requires macOS 15 or later. Supports Intel and Apple Silicon.

Installation uses the official signed and notarized installer and requires administrator authentication. The installer opens Tethered after installation. Its optional privacy-permission reset is not selected by default.

```sh
brew upgrade --cask Tumerit/tap/tethered
brew uninstall --cask Tumerit/tap/tethered
```

For complete removal of generated alert helpers, use Tethered's built-in Uninstall action before removing the Homebrew cask. Local preferences and account data are preserved by the cask.

## Updating the cask

GitHub Actions checks the latest stable Tumerit/Tethered release daily at 09:17 UTC. Publish a tag such as `v1.0.1` with a completed asset named `Tethered-1.0.1.pkg`. The bot downloads the installer, verifies its size and GitHub asset digest when available, then commits the new version and SHA-256 to the cask. Drafts, prereleases, and older versions are skipped.

To update sooner, open Actions → Update Tethered cask → Run workflow. Failed runs are visible in Actions. Do not replace an existing release asset; publish a new version instead.

The bot updates only the version and checksum. Changes to minimum macOS support, installer naming, or the helper launchd label require a cask edit. Continue signing and notarizing each installer before publishing it; this workflow does not verify Apple notarization.
