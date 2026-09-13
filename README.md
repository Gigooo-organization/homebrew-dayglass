# homebrew-dayglass

Homebrew tap for [dayglass](https://github.com/Gigooo-organization/dayglass).

```sh
brew tap gigooo-organization/dayglass
brew install gigooo-organization/tap/dayglass
dayglass setup
```

The formula builds dayglass from the tagged Swift source on the local Apple Silicon Mac and depends on the GitHub CLI (`gh`) for the read-only activity sync. After installation, `dayglass setup` creates the local hooks, loopback OTLP receiver, launchd agents, source identity, and project configuration template.

The source build requires a Swift 6 toolchain (for example, Xcode 16 or a compatible standalone Swift installation).

The dayglass project documents the data boundary. Raw local logs stay under the macOS Application Support directory; dayglass does not upload them. Review the generated frozen report before any manual submission.

Formula updates are triggered by the upstream release workflow or can be run manually with the `Update formula` workflow. Configure `HOMEBREW_TAP_TOKEN` on the upstream repository if automatic repository dispatch is desired.
