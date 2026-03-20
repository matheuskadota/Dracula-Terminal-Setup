# 🧛 Dracula Terminal Setup

> 🖥️ **Desktop** — Intel i3-10100 · RTX 3050 · Windows 11 Pro (25H2) + Fedora 43 WSL2

Setup unificado do terminal com tema **Dracula Powerline** para **Windows (PowerShell)** e **Fedora Linux (WSL2)**, usando o motor [Starship](https://starship.rs/).

![Preview](IMG/Windows%20-%20Fedora.png)

---

## 🖥️ Hardware

| Componente | Especificação |
|---|---|
| CPU | Intel Core i3-10100 @ 3.60 GHz (8 threads) |
| RAM | 16 GB DDR4 2400 MHz |
| GPU | NVIDIA GeForce RTX 3050 + Intel UHD 630 |
| OS | Windows 11 Pro (25H2) + Fedora 43 WSL2 |
| Terminal | Windows Terminal 1.23 |
| Shell Windows | PowerShell 7.5.4 |
| Shell Linux | Zsh 5.9 |

---

## ⚙️ Stack

| Ferramenta | Função |
|---|---|
| [Starship](https://starship.rs/) | Motor do prompt (cross-shell) |
| [Oh My Zsh](https://ohmyz.sh/) | Framework do Zsh (Linux) |
| [Terminal-Icons](https://github.com/devblackops/Terminal-Icons) | Ícones no `ls` (PowerShell) |
| [PSReadLine](https://github.com/PowerShell/PSReadLine) | Autocomplete inline (PowerShell) |
| [FiraCode Nerd Font](https://www.nerdfonts.com/) | Fonte com ícones |
| [fastfetch](https://github.com/fastfetch-cli/fastfetch) | Sysinfo no startup |

---

## 📁 Estrutura

```
Dracula_Windows-Terminal/
├── windows/
│   └── profile.ps1          ← PowerShell profile
├── linux/
│   └── .zshrc               ← Zsh config
├── shared/
│   └── starship.toml        ← Config unificada (Windows + Linux)
├── IMG/
│   └── Windows - Fedora.png
└── README.md
```

---

## 🔄 Restauro Pós-Formato

### 1 — Clonar o repo

```bash
git clone https://github.com/matheuskadota/Dracula_Windows-Terminal ~/Dracula-Terminal-Setup
```

---

### 2 — Linux (Fedora WSL2)

**Instalar dependências:**
```bash
# Starship
curl -sS https://starship.rs/install.sh | sh

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# fastfetch
sudo dnf install fastfetch
```

**Restaurar configs:**
```bash
cp ~/Dracula-Terminal-Setup/linux/.zshrc ~/.zshrc
cp ~/Dracula-Terminal-Setup/shared/starship.toml ~/.config/starship.toml
```

---

### 3 — Windows (PowerShell)

**Instalar dependências:**
```powershell
winget install Starship.Starship
winget install fastfetch-cli.fastfetch
Install-Module -Name Terminal-Icons -Repository PSGallery
Install-Module PSReadLine
```
> FiraCode Nerd Font: instalar manualmente em [nerdfonts.com](https://www.nerdfonts.com/)

**Restaurar configs:**
```powershell
Copy-Item .\windows\profile.ps1 $PROFILE
Copy-Item .\shared\starship.toml $env:USERPROFILE\.config\starship.toml
```

---

## 📍 Locais de Configuração

| Arquivo | Caminho no sistema |
|---|---|
| PowerShell profile | `C:\Users\Mattk\OneDrive\Documentos\PowerShell\Microsoft.PowerShell_profile.ps1` |
| Starship (Windows) | `C:\Users\Mattk\.config\starship.toml` |
| .zshrc (WSL) | `/home/kadota/.zshrc` |
| Starship (Linux) | `/home/kadota/.config/starship.toml` |

---

## ⚠️ CRÍTICO: Aviso sobre Nerd Font

**Nunca copiar ícones de Nerd Font pelo navegador** — corrompem o UTF-8.
Sempre injetar configurações via terminal:

```bash
cat << 'EOF' > ~/.config/starship.toml
# cole o conteúdo aqui
EOF
```
