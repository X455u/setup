#!/bin/zsh

# code --list-extensions
# Install extensions
code --install-extension aws-scripting-guy.cform --force
code --install-extension christian-kohler.npm-intellisense --force
code --install-extension dbaeumer.vscode-eslint --force
code --install-extension eamodio.gitlens --force
code --install-extension eriklynd.json-tools --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension GrapeCity.gc-excelviewer --force
code --install-extension itryapitsin.Scala --force
code --install-extension mechatroner.rainbow-csv --force
code --install-extension mohsen1.prettify-json --force
code --install-extension ms-azuretools.vscode-docker --force
code --install-extension ms-python.python --force
code --install-extension ms-vscode.atom-keybindings --force
code --install-extension ms-vscode.vscode-typescript-tslint-plugin --force
code --install-extension redhat.vscode-yaml --force
code --install-extension shardulm94.trailing-spaces --force
code --install-extension Tobermory.es6-string-html --force
code --install-extension vscode-icons-team.vscode-icons --force
code --install-extension wix.vscode-import-cost --force
code --install-extension zhuangtongfa.material-theme --force

# Overwrite user settings
cat << EOT > $HOME/Library/Application\ Support/Code/User/settings.json
{
    "atomKeymap.promptV3Features": true,
    "workbench.colorTheme": "One Dark Pro",
    "trailing-spaces.trimOnSave": true,
    "window.zoomLevel": 0,
    "editor.renderWhitespace": "boundary",
    "editor.fontSize": 14,
    "editor.accessibilitySupport": "off",
    "tslint.packageManager": "yarn",
    "typescript.implementationsCodeLens.enabled": true,
    "typescript.referencesCodeLens.enabled": true,
    "javascript.referencesCodeLens.enabled": true,
    "gitlens.codeLens.enabled": false,
    "gitlens.currentLine.enabled": false,
    "gitlens.hovers.currentLine.over": "line",
    "tslint.configFile": "tslint.json",
    "workbench.iconTheme": "vscode-icons",
    "terminal.integrated.fontFamily": "Source Code Pro for Powerline",
    "jupyter.askForKernelRestart": false,
    "editor.codeActionsOnSave": {
        "source.fixAll": true
    }
}
EOT
