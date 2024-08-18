#!/bin/bash

# Script to set up LaTeX environment and necessary tools, including German language support

# Function to check for root privileges
check_root() {
    if [ "$(id -u)" -ne "0" ]; then
        echo "This script requires root privileges. Please run as root or with sudo."
        exit 1
    fi
}

# Install LaTeX distribution and necessary tools
install_texlive() {
    echo "Installing TeX Live distribution..."
    if command -v apt-get &> /dev/null; then
        # For Debian-based systems (Ubuntu, Debian)
        apt-get update
        apt-get install -y texlive texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra texlive-publishers texlive-lang-german
    elif command -v brew &> /dev/null; then
        # For macOS with Homebrew
        brew install --cask mactex
        # Ensure German language support is included in MacTeX
    elif command -v dnf &> /dev/null; then
        # For Fedora-based systems
        dnf install -y texlive-scheme-full
    elif command -v pacman &> /dev/null; then
        # For Arch-based systems
        pacman -S --noconfirm texlive-most
        pacman -S --noconfirm texlive-lang-german
    else
        echo "Unsupported package manager. Please install TeX Live manually and include German language support."
        exit 1
    fi
}

# Install a text editor (optional)
install_text_editor() {
    echo "Installing a text editor..."
    if command -v apt-get &> /dev/null; then
        # For Debian-based systems
        apt-get install -y texmaker
    elif command -v brew &> /dev/null; then
        # For macOS with Homebrew
        brew install vim
    elif command -v dnf &> /dev/null; then
        # For Fedora-based systems
        dnf install -y vim
    elif command -v pacman &> /dev/null; then
        # For Arch-based systems
        pacman -S --noconfirm vim
    else
        echo "Unsupported package manager. Please install a text editor manually."
        exit 1
    fi
}

# Install Git (useful for version control)
install_git() {
    echo "Installing Git..."
    if command -v apt-get &> /dev/null; then
        # For Debian-based systems
        apt-get install -y git
    elif command -v brew &> /dev/null; then
        # For macOS with Homebrew
        brew install git
    elif command -v dnf &> /dev/null; then
        # For Fedora-based systems
        dnf install -y git
    elif command -v pacman &> /dev/null; then
        # For Arch-based systems
        pacman -S --noconfirm git
    else
        echo "Unsupported package manager. Please install Git manually."
        exit 1
    fi
}

# Main script execution
check_root
install_texlive
install_text_editor
install_git

echo "Setup completed successfully."
