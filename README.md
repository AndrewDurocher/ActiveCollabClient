# ActiveCollab Client

A lightweight web wrapper app for [ActiveCollab](https://activecollab.com/) on Linux, inspired by [DHH's approach in Omarchy](https://github.com/basecamp/omarchy).

## What is this?

This project creates a native-feeling desktop app for ActiveCollab using Chromium's `--app` mode. Instead of using heavy frameworks like Electron, it leverages your existing browser to create a clean, frameless window that integrates with your Linux desktop.

## Installation

### Quick Install

```bash
# Clone the repository
git clone https://github.com/AndrewDurocher/ActiveCollabClient.git
cd ActiveCollabClient

# Run the install script
./install.sh
```

### Manual Install

1. Copy the launch script:
   ```bash
   mkdir -p ~/.local/bin
   cp launch-activecollab ~/.local/bin/
   chmod +x ~/.local/bin/launch-activecollab
   ```

2. Copy the desktop entry:
   ```bash
   mkdir -p ~/.local/share/applications/icons
   cp ActiveCollab.desktop ~/.local/share/applications/
   cp icons/ActiveCollab.png ~/.local/share/applications/icons/
   ```

3. Update the desktop database:
   ```bash
   update-desktop-database ~/.local/share/applications/
   ```

## Usage

- **From App Menu**: Search for "ActiveCollab" in your application launcher
- **Pin to Dock**: Right-click the app and pin it to your taskbar/dock
- **From Terminal**: `~/.local/bin/launch-activecollab`

## Requirements

A Chromium-based browser:
- Chromium
- Google Chrome
- Brave
- Microsoft Edge
- Vivaldi

## How it Works

The launch script detects your installed Chromium-based browser and opens ActiveCollab in app mode:

```bash
chromium --app="https://app.activecollab.com/"
```

This creates a frameless, standalone window without browser UI elements.

## Credits

Inspired by [Omarchy](https://github.com/basecamp/omarchy) by DHH and 37signals, which uses this same approach for web apps like ChatGPT, X, WhatsApp, and more.

## License

MIT
