# Referência de comandos - NÃO EXECUTAR COMO SCRIPT.
# Copie e execute manualmente os blocos desejados.

# Atualizar o sistema.

sudo dnf upgrade --refresh -y

# Ativar flatpaks e adicionar o flathub manualmente caso tenha problema com a ativação pelo [Centro de boas-vindas].

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Ativar os repositórios do RPM Fusion, atualizar os metadados e regenerar o AppStream.

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf makecache --refresh

# Resolver os problemas de codecs.

sudo dnf install gstreamer1-libav gstreamer1-plugins-{base,good,good-gtk,ugly}
sudo dnf swap gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld --allowerasing
sudo dnf swap ffmpeg-free ffmpeg --allowerasing

# Atualizar a aceleração por hardware (GPU-AMD) para drivers mais completos.

sudo dnf swap mesa-va-drivers mesa-va-drivers-freeworld --allowerasing
sudo dnf swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld --allowerasing

# Instalar o gamemode e gamescope para os jogos.

sudo dnf install gamemode gamescope

# Instalar o MESA manualmente caso tenha algum problema durante instalação do SO, mas por padrão já estarão instalados se sua placa for AMD.
# Instalar ferramenta adicional do Vulkan.

sudo dnf install mesa-vulkan-drivers mesa-vulkan-drivers.i686
sudo dnf install vulkan-tools

# Remover as ferramentas pouco utilizadas, com problemas e jogos.

sudo dnf remove --setopt=clean_requirements_on_remove=1 kmail korganizer kaddressbook akregator kontact ktnef skanpage kolourpaint qrca krdc krfb neochat kmouth kamoso dragon mediawriter kmines kpat

# Verificar os repositórios do Chrome e Steam (caso pretenda instalá-los).

dnf repolist --all | grep chrome
dnf repolist --all | grep steam
# Caso os repositórios do Chrome e/ou Steam não apareçam, 
# ativar os repositórios de terceiros no app de boas-vindas antes de prosseguir.

# Ferramentas de organização pessoal.

flatpak install flathub com.bitwarden.desktop
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub io.ente.auth

# Ferramentas de produtividade

sudo dnf install google-chrome-stable
flatpak install flathub org.mozilla.Thunderbird
flatpak install flathub com.github.johnfactotum.Foliate
flatpak install flathub io.github.diegopvlk.Tomatillo
flatpak install flathub io.gitlab.guillermop.Counters
flatpak install flathub com.rafaelmardojai.Blanket
# Não necessário instalar o [Firefox] e [LibreOffice] já são instalados por padrão no Fedora.
# Baixar o [MarkText] (AppImage) GitHub do MarkText*
# Criar Web App para as seguintes ferramentas:
# [Spotify], [WhatsApp], [Trello], [Feedly].

# Ferramentas de gestão e configuração.

sudo dnf install corectrl
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub io.github.flattool.Warehouse
flatpak install flathub io.github.giantpinkrobots.flatsweep
flatpak install flathub it.mijorus.gearlever
flatpak install flathub io.github.kolunmi.Bazaar

# Ferramentas de jogos.

sudo dnf install steam
flatpak install flathub com.heroicgameslauncher.hgl
flatpak install flathub net.davidotek.pupgui2
flatpak install flathub com.github.Matoking.protontricks
flatpak install flathub net.lutris.Lutris
flatpak install flathub com.usebottles.bottles
flatpak install flathub org.prismlauncher.PrismLauncher
flatpak install flathub com.discordapp.Discord
# Desativar o autodownload de arquivos pelo no app do [Discord].
# Revisar as permissões do [Discord] pelo [Flatseal] são elas: Arquivos do sistema; Dispositivos; Captura de Tela.


# Ferramentas de emulação de jogos.

flatpak install flathub org.libretro.RetroArch
flatpak install flathub net.kuribo64.melonDS
flatpak install flathub org.ppsspp.PPSSPP
flatpak install flathub net.pcsx2.PCSX2

# Ferramentas de analise de desempenho.

sudo dnf install fastfetch
sudo dnf install btop
sudo dnf install mangohud
flatpak install flathub io.github.radiolamp.mangojuice

# Ferramentas para streamer e produção de conteúdo.

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
# Baixar o [Audacity] (AppImage) Site do Audacity*

# Utilitários.

sudo dnf install kclock kget ktorrent
flatpak install flathub org.localsend.localsend_app
# [Ark] Já é instalado por padrão no Fedora.
# [Balena Etcher] (AppImage) Site do Balena*

# Ferramentas de multimedia.

flatpak install flathub io.github.diegopvlk.Cine
# [Elisa] já é instalado por padrão no Fedora.

# Ferramentas de desenvolvimento

sudo dnf install java-21-openjdk-devel.x86_64
sudo dnf install git
flatpak install flathub com.vscodium.codium
# [Python] já é instalado por padrão no Fedora.
# [IntelliJ] & [PyCharm] (Toolbox App) Site da JetBrains*

# Ferramentas de RPG

flatpak install flathub io.github.kriptolix.Poliedros
flatpak install flathub de.hummdudel.Libellus

# Instalar o grupo de virtualização que já inclui o virt-manager(GUI) + configuração

sudo dnf install @virtualization
sudo systemctl enable --now libvirtd

# Por fim, no Fedora já são instalados uma serie de ferramentas que cumprem bem o papel. 
# Segue abaixo a lista com as ferramentas para você ficar de olho caso precise de algo.
# KDE Connect, KWallerManager, Filelight, KFind, Spectacle, KCharSelect, Kleopatra,
# Gerenciador de partições do KDE, Visualizador de processos com falha, Seletor de emoji.
