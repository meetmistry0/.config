# PS-Readline
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Windows

# Lists all available options in block form instead of just autocompleting (Going one by one).
Set-PSReadlineKeyHandler -Chord Tab -Function MenuComplete

# Terminal Icons
Import-Module -Name Terminal-Icons

# Unix aliases.
Set-Alias -Name c -Value clear
Set-Alias -Name touch -Value New-Item
Set-Alias -Name rm -Value del

# Alias for opening explorer.exe
Set-Alias -Name open -Value explorer

# Alias for hidden files/directories.
Function lsa {ls -Hidden}

# Alias for exit.
Function x {exit}

# Function to create a new directory and cd into it.
function mkcd($new_dir) {
	mkdir ($new_dir) | cd
}

# Traverse back a directory.
Function .. {cd ..}

# Traverse back 2 directories.
Function c2 {cd ../..}

# Location of the searched program's executable.
function which ($param) {
  Get-Command -Name $param -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Invokes starship for prompt.
Invoke-Expression (&starship init powershell)
