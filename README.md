# 🧛‍♂️ Dracula Terminal Setup: Windows 11 & WSL2

![Preview](IMG/Windows%20-%20Fedora.png)

> Preview do ambiente híbrido em execução.

---

## 📌 Sobre o Projeto

Este repositório contém o backup completo e a infraestrutura como código (IaC) do meu ambiente de terminal híbrido. Projetado para máxima performance e estética unificada, ele sincroniza o tema **Dracula** entre o Windows 11 nativo e o subsistema Linux (WSL2), garantindo uma transição visual perfeita entre sistemas operacionais.

---

## ⚙️ Tecnologias e Ferramentas

| Componente | Detalhe |
|---|---|
| OS Base | Windows 11 Pro (Otimizado com telemetria desativada via OOSU10) |
| Sub-sistema | WSL2 com Fedora Linux 43 |
| Shell Windows | PowerShell 7.5.4 |
| Shell Linux | ZSH 5.9 + Oh My Zsh |
| Prompt Universal | Starship (Customizado para ocultar credenciais locais) |
| Fontes | JetBrainsMono Nerd Font |
| Monitoramento | Fastfetch (Configurações em JSONc) |

---

## 📂 Estrutura de Arquivos

- `Microsoft.PowerShell_profile.ps1`: Perfil de inicialização do PowerShell 7 (PSReadLine, módulos e aliases).
- `.zshrc`: Configurações nativas do ambiente Fedora/WSL.
- `starship.toml`: Regras de prompt unificadas para ambos os sistemas operacionais, com foco em privacidade (omissão de hostname/usuário) e indicadores de git.

---

## 🚀 Filosofia do Setup

1. **Performance Híbrida:** Uso do plano Ultimate Performance no host, enquanto o desenvolvimento pesado é isolado no file system nativo do Linux (`ext4`) para evitar o overhead do NTFS.
2. **Minimalismo e Foco:** Supressão de banners de carregamento (`-nologo`) e limitação de poluição visual.
3. **Privacidade Padrão:** O `starship.toml` foi intencionalmente configurado para não expor usuários locais ou nomes de rede em capturas de tela e logs.
