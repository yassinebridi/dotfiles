Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit

function editTermSett {nvim C:\Users\yassi\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json}

function editProfile {nvim C:\Users\yassi\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1}

function editNvim {nvim C:\Users\yassi\AppData\Local\nvim\init.vim}

set-alias eprof editProfile
set-alias eterm editTermSett
set-alias vim nvim
set-alias evim editNvim
set-alias gpd D:
set-alias gpc C:
