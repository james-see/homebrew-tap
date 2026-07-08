# Homebrew Tap

Homebrew formulae for james-see projects.

## Formulae (CLI tools)

### gofindpi
Go utility to locate and identify Raspberry Pi devices on your network quickly. Useful for headless setups and DietPi boxes; reports IP and model so you can SSH in without guesswork.
```
brew install gofindpi
```

### gofindadomain
Check domain availability quickly using Golang.
```
brew install gofindadomain
```

### synthtribe2midi
Converts between MIDI and Behringer SynthTribe formats (.seq/.syx). Includes CLI, TUI, and a small REST API to batch conversions; ideal for TD-3 workflows and pattern migration.
```
brew install synthtribe2midi
```

### unicorn
Text-based startup adventure — play as a VC and make bets on startups or try to be the unicorn.
```
brew install unicorn
```

### weatherornot
Retro terminal weather CLI with ASCII art and charts. Pulls data from OpenWeatherMap; shows current conditions and temperature graphs. Requires a free API key.
```
brew install weatherornot
```

### swatchify
CLI to extract dominant colors from images via k-means clustering. Generates compact palettes for design, branding, and UI theming.
```
brew install swatchify
```

## Casks (GUI apps)

### ynot
GUI YouTube downloader packaged as a cask for easy app install/updates.
```
brew install --cask ynot
```

### cleanpdf
Clean PDF app packaged as a cask.
```
brew install --cask cleanpdf
```

## Install, update, remove

- Tap:
```
brew tap james-see/tap
```

- Install (short names after tap):
```
brew install gofindpi
brew install gofindadomain
brew install synthtribe2midi
brew install unicorn
brew install weatherornot
brew install swatchify
brew install --cask ynot
brew install --cask cleanpdf
```

- Update:
```
brew update && brew upgrade
```

- Uninstall:
```
brew uninstall gofindpi gofindadomain synthtribe2midi unicorn weatherornot swatchify
brew uninstall --cask ynot cleanpdf
```

- Remove tap:
```
brew untap james-see/tap
```
