#!/usr/bin/env bash
source ../../lib/log.sh

bot "Installing Visual Studio code extensions and config."

code -v > /dev/null
if [[ $? -eq 0 ]];then
    read -r -p "Do you want to install VSC extensions? [y|N] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        ok "Installing extensions please wait..."
        code --install-extension RoscoP.ActiveFileInStatusBar
        code --install-extension TsumiNa.Seti-theme
        code --install-extension alefragnani.Bookmarks
        code --install-extension andys8.jest-snippets
        code --install-extension chenxsan.vscode-standardjs
        code --install-extension CoenraadS.bracket-pair-colorizer
        code --install-extension DavidAnson.vscode-markdownlint
        code --install-extension dbaeumer.vscode-eslint
        code --install-extension dzannotti.vscode-babel-coloring
        code --install-extension eamodio.gitlens
        code --install-extension eg2.tslint
        code --install-extension esbenp.prettier-vscode
        code --install-extension fabiospampinato.vscode-todo-plus
        code --install-extension flowtype.flow-for-vscode
        code --install-extension gcazaciuc.vscode-flow-ide
        code --install-extension JuanBlanco.solidity
        code --install-extension mechatroner.rainbow-csv
        code --install-extension ms-azuretools.vscode-docker
        code --install-extension ms-vsliveshare.vsliveshare
        code --install-extension msjsdiag.debugger-for-chrome
        code --install-extension numso.prettier-standard-vscode
        code --install-extension pflannery.vscode-versionlens
        code --install-extension qinjia.seti-icons
        code --install-extension ryu1kn.partial-diff
        code --install-extension samverschueren.linter-xo
        code --install-extension sbrink.elm
        code --install-extension sdras.night-owl
        code --install-extension shinnn.stylelint
        code --install-extension sleistner.vscode-fileutils
        code --install-extension stkb.rewrap
        code --install-extension streetsidesoftware.code-spell-checker
        code --install-extension VisualStudioExptTeam.vscodeintellicode
        code --install-extension wayou.vscode-todo-highlight
        code --install-extension wmaurer.change-case

        ok "Extensions for VSC have been installed. Please restart your VSC."
    else
        ok "Skipping extension install.";
    fi
else
    error "It looks like the command 'code' isn't accessible."
    error "Please make sure you have Visual Studio Code installed"
    error "And that you executed this procedure: https://code.visualstudio.com/docs/setup/mac"
fi
