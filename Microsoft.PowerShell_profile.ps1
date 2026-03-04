# Carrega os ícones para o comando 'ls'
Import-Module -Name Terminal-Icons

# Configurações do PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Inicia o Oh My Posh
oh-my-posh init pwsh --config "C:\Users\Mattk\MeusTerminais\dracula.omp.json" | Invoke-Expression

# Exibe fastfetch
fastfetch

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle InlineView