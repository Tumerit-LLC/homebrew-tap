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

Publish a new versioned installer in the Tumerit/Tethered GitHub releases. Update `version` and `sha256` in `Casks/tethered.rb` together. Calculate the SHA-256 from the published download, verify its installer signature and notarization, and check the bundled minimum macOS version and helper launchd label. Do not replace a published installer without updating the checksum.
