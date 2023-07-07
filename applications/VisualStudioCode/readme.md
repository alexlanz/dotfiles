Visual Studio Code
==================

1. Open the Command Palette
2. Select "Preferences: Open User Settings (JSON)
3. Past the content of the `settings.json` file into the file and save it.

```bash
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false
```
