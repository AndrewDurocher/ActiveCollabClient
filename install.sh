#!/bin/bash

# ActiveCollab Client Installer
# Creates a web wrapper app for ActiveCollab on Linux

set -e

echo "Installing ActiveCollab Client..."

# Create directories
mkdir -p ~/.local/bin
mkdir -p ~/.local/share/applications/icons

# Copy launch script
cp launch-activecollab ~/.local/bin/
chmod +x ~/.local/bin/launch-activecollab

# Copy icon
cp icons/ActiveCollab.png ~/.local/share/applications/icons/

# Copy and configure desktop entry (replace $HOME with actual path)
sed "s|\$HOME|$HOME|g" ActiveCollab.desktop > ~/.local/share/applications/ActiveCollab.desktop

# Update desktop database
if command -v update-desktop-database &> /dev/null; then
    update-desktop-database ~/.local/share/applications/
fi

echo "Installation complete!"
echo ""
echo "ActiveCollab should now appear in your application menu."
echo "You can also run it from: ~/.local/bin/launch-activecollab"
