# Atajos personales
alias dot='cd ~/mydotfiles && ls'
alias gst='git status'
alias n='nvim'
alias conf='cd ~/mydotfiles/nvim && nvim init.lua'
# Función para guardar todos los dotfiles y extensiones de VS Code
function super-save() {
    echo "Updating VS Code extensions list..."
    code --list-extensions > ~/mydotfiles/vscode/extensions.txt
    
    echo "Pushing changes to GitHub..."
    cd ~/mydotfiles
    git add .
    git commit -m "Auto-update: $(date +'%Y-%m-%d %H:%M:%S')"
    git push
    cd - > /dev/null
    echo "Everything is synced! 🚀"
}

# Alias para llamar a la función rápidamente
alias save='super-save'
