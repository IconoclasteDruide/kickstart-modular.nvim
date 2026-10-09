# André’s local setup

# Required Installations

1. Install Homebrew. Go to brew.sh on the internet. Copy paste the installation command into Terminal and hit enter.
2. Install Ghostty: `brew install --cask ghostty`. Do the rest of the steps in Ghostty.
3. Make Ghostty slightly transparent and turn off all ligatures. Command+, then enter these settings:
```
font-feature = -calt
font-feature = -liga
font-feature = -dlig

theme = Srcery

background-opacity = .93
background-opacity-cells = true
```
Save it and close.
4. Install GitHub CLI: `brew install gh`
5. Generate a public key: `ssh-keygen -t ed25519`
6. Copy to clipboard: `pbcopy < ~/.ssh/id_ed25519.pub`
7. Add it to your GitHub account by login in at github.com and going to Settings>SSH keys
8. Log in to GitHub CLI: `gh auth login`
    1. ? Where do you use GitHub? GitHub.com
    2. ? What is your preferred protocol for Git operations on this host? SSH
    3. ? Upload your SSH public key to your GitHub account? Skip
    4. ? How would you like to authenticate GitHub CLI? Login with a web browser
9. Install Neovim: `brew install neovim`
10. Install these dot files for neovim setup:
    1. `cd ~/.config`
    2. Clone the repo: `git clone git@github.com:IconoclasteDruide/kickstart-modular.nvim.git`. Say `yes` to “Are you sure you want to continue connecting?”
    3. Rename the folder `mv kickstart-modular.nvim nvim`
11. Install tree-sitter and tree-sitter-cli:
    1. `brew install tree-sitter`
    2. `brew install tree-sitter-cli`
12. Install uv for python package installation: `brew install uv`
13. Open neovim: `nvim` and type `y` to install all plugins.
14. Somewhere under home, choose or make a folder for work. `cd` into it and clone the rml repo: `git clone git@github.com:Accordance-Bible/rml.git`
15. `mkdir -m 755 projects`. Then `cd projects` and git clone any repos where the code depends on the rml repo.

# Optional Installations
1. `brew install bat`
2. `brew install tree`
3. `brew install zsh-syntax-highlighting` then run the command to add it to .zshenv.
