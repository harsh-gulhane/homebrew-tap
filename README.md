# harsh-gulhane/homebrew-tap

Homebrew tap for [harsh-gulhane](https://github.com/harsh-gulhane)'s open-source tools.

| Package | Install | What it is |
|-|-|-|
| [agentmemdb](https://github.com/harsh-gulhane/agentmemdb) | `brew install harsh-gulhane/tap/agentmemdb` | Local-first, shared long-term memory for AI agents, served over MCP (macOS and Linux) |
| [LogiCam Tuner](https://github.com/harsh-gulhane/logicam-tuner) | `brew install --cask harsh-gulhane/tap/logicam-tuner` | Unofficial open-source Mac app for the Logitech StreamCam |

Update with `brew upgrade agentmemdb` or `brew upgrade --cask logicam-tuner`.

## LogiCam Tuner

The app is not notarized by Apple, so allow it once in **System Settings → Privacy & Security → Open Anyway** (see the app's README).

## Maintenance

Each package's release script updates its entry here: `scripts/update-formula.sh` in agentmemdb and `scripts/release.sh` in LogiCam Tuner. The [formulae workflow](.github/workflows/formulae.yml) audits, installs and tests every formula on macOS and Linux for each change.
