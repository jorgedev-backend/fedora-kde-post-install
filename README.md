# Fedora KDE – Guia de Pós-Instalação

> ⚠️ **Atenção**
>
> Este repositório é um **guia**, não um script automatizado.
> Execute os comandos **manualmente**, entendendo cada etapa.
>
> Para que este guia funcione como esperado, **ative os repositórios de terceiros** no aplicativo de **Boas-vindas do Fedora** antes de começar.

---

## 🔄 Atualizar o sistema

```bash
sudo dnf upgrade --refresh -y
```

---

## 📦 Flatpak e Flathub

Caso a ativação via *Centro de Boas-vindas* falhe, adicione o Flathub manualmente:

```bash
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```

---

## 🎞️ RPM Fusion (Free + Nonfree)

Ativar os repositórios, atualizar metadados e regenerar o AppStream:

```bash
sudo dnf install \
https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf makecache --refresh
```

---

## 🎧 Correção de codecs multimídia

```bash
sudo dnf install gstreamer1-libav gstreamer1-plugins-{base,good,good-gtk,ugly}
sudo dnf swap gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld --allowerasing
sudo dnf swap ffmpeg-free ffmpeg --allowerasing
```

---

## 🖥️ Aceleração de hardware (AMD GPU)

Drivers MESA mais completos:

```bash
sudo dnf swap mesa-va-drivers mesa-va-drivers-freeworld --allowerasing
sudo dnf swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld --allowerasing
```

---

## 🎮 Jogos – Gamemode e Gamescope

```bash
sudo dnf install gamemode gamescope
```

---

## 🧩 Vulkan e MESA (caso necessário)

Normalmente já vêm instalados em GPUs AMD:

```bash
sudo dnf install mesa-vulkan-drivers mesa-vulkan-drivers.i686
sudo dnf install vulkan-tools
```

---

## 🧹 Remoção de aplicativos pouco utilizados

```bash
sudo dnf remove --setopt=clean_requirements_on_remove=1 \
  kmail korganizer kaddressbook akregator kontact ktnef \
  skanpage kolourpaint qrca krdc krfb neochat kmouth \
  kamoso dragon mediawriter kmines kpat
```

---

## 🌐 Verificação de repositórios (Chrome e Steam)

```bash
dnf repolist --all | grep chrome
dnf repolist --all | grep steam
```

> Caso não apareçam, volte ao **Boas-vindas do Fedora** e ative os repositórios de terceiros.

---

## 🗂️ Organização pessoal

```bash
flatpak install flathub com.bitwarden.desktop
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub io.ente.auth
```

---

## 🧠 Produtividade

```bash
sudo dnf install google-chrome-stable
flatpak install flathub org.mozilla.Thunderbird
flatpak install flathub com.github.johnfactotum.Foliate
flatpak install flathub io.github.diegopvlk.Tomatillo
flatpak install flathub io.gitlab.guillermop.Counters
flatpak install flathub com.rafaelmardojai.Blanket
```

* Firefox e LibreOffice já vêm instalados
* MarkText: AppImage (GitHub)
* Criar Web Apps: Spotify, WhatsApp, Trello, Feedly

---

## ⚙️ Gestão e configuração

```bash
sudo dnf install corectrl
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub io.github.flattool.Warehouse
flatpak install flathub io.github.giantpinkrobots.flatsweep
flatpak install flathub it.mijorus.gearlever
flatpak install flathub io.github.kolunmi.Bazaar
```

---

## 🎲 Jogos

```bash
sudo dnf install steam
flatpak install flathub com.heroicgameslauncher.hgl
flatpak install flathub net.davidotek.pupgui2
flatpak install flathub com.github.Matoking.protontricks
flatpak install flathub net.lutris.Lutris
flatpak install flathub com.usebottles.bottles
flatpak install flathub org.prismlauncher.PrismLauncher
flatpak install flathub com.discordapp.Discord
```

> No Discord:
>
> * Desativar auto-download de arquivos
> * Revisar permissões no Flatseal (Arquivos, Dispositivos, Captura de tela)

---

## 🕹️ Emulação

```bash
flatpak install flathub org.libretro.RetroArch
flatpak install flathub net.kuribo64.melonDS
flatpak install flathub org.ppsspp.PPSSPP
flatpak install flathub net.pcsx2.PCSX2
```

---

## 📊 Análise de desempenho

```bash
sudo dnf install fastfetch
sudo dnf install btop
sudo dnf install mangohud
flatpak install flathub io.github.radiolamp.mangojuice
```

---

## 🎥 Streamer e produção de conteúdo

```bash
flatpak install flathub com.obsproject.Studio
flatpak install flathub hu.irl.cameractrls
flatpak install flathub com.github.wwmm.easyeffects
flatpak install flathub org.kde.kdenlive
flatpak install flathub org.shotcut.Shotcut
flatpak install flathub org.gimp.GIMP
flatpak install flathub org.kde.krita
flatpak install flathub org.inkscape.Inkscape
flatpak install flathub io.gitlab.adhami3310.Converter
flatpak install flathub fr.handbrake.ghb
```

* Audacity: AppImage (site oficial)

---

## 🧰 Utilitários

```bash
sudo dnf install kclock kget ktorrent
flatpak install flathub org.localsend.localsend_app
```

* Ark já vem instalado
* Balena Etcher: AppImage

---

## 🎞️ Multimídia

```bash
flatpak install flathub io.github.diegopvlk.Cine
```

* Elisa já vem instalado

---

## 💻 Desenvolvimento

```bash
sudo dnf install java-21-openjdk-devel.x86_64
sudo dnf install git
flatpak install flathub com.vscodium.codium
```

* Python já vem instalado
* IntelliJ / PyCharm: JetBrains Toolbox

---

## 🎲 RPG

```bash
flatpak install flathub io.github.kriptolix.Poliedros
flatpak install flathub de.hummdudel.Libellus
```

---

## 🖥️ Virtualização

Instalação do grupo de virtualização (inclui virt-manager):

```bash
sudo dnf install @virtualization
sudo systemctl enable --now libvirtd
```

---

## ✅ Ferramentas já inclusas no Fedora KDE

Fique de olho — muitas já resolvem bem várias necessidades:

* KDE Connect
* KWalletManager
* Filelight
* KFind
* Spectacle
* KCharSelect
* Kleopatra
* Gerenciador de Partições do KDE
* Visualizador de processos com falha
* Seletor de emoji
