#!/bin/sh

cat <<EOF | xmenu -p 0x21 | sh &
Applications
	Accessories
		IMG:/usr/share//icons/hicolor/scalable/apps/org.xfce.thunar.svg	Bulk Rename (Bulk Rename)	thunar --bulk-rename 
		IMG:/usr/share//icons/hicolor/22x22/apps/engrampa.png	Engrampa Archive Manager (Archive Manager)	engrampa 
		IMG:/usr/share//icons/hicolor/scalable/apps/org.gnome.Nautilus.svg	Files	nautilus --new-window 
		IMG:/usr/share//icons/hicolor/scalable/apps/com.github.tchx84.Flatseal.svg	Flatseal	com.github.tchx84.Flatseal
		My Calc (Calculator)	calc
		Nemo	nemo 
		IMG:/usr/share/pixmaps/nvim.png	Neovim (Text Editor)	xterm -e nvim 
		IMG:/usr/share//icons/hicolor/22x22/apps/nitrogen.png	nitrogen (Wallpaper Setter)	nitrogen
		picom (X compositor)	picom
		scrcpy (Android Remote Control)	/bin/sh -c "\\$SHELL -i -c scrcpy"
		scrcpy (console) (Android Remote Control)	xterm -e /bin/sh -c "\\$SHELL -i -c 'scrcpy --pause-on-exit=if-error'"
		IMG:/usr/share//icons/hicolor/scalable/apps/org.gnome.Screenshot.svg	Screenshot	gnome-screenshot --interactive
		Text Editor	xed 
		Vim (Text Editor)	xterm -e vim 
		IMG:/usr/share//icons/hicolor/scalable/apps/winetricks.svg	Winetricks	winetricks --gui
	Development
		CMake	cmake-gui 
		IMG:/usr/share//icons/hicolor/scalable/apps/idea.svg	IntelliJ IDEA Community Edition	/usr/bin/idea 
		My Editor (TextEditor)	myeditor
		My Notes (Notes)	notes
		My Todo (Todo)	todo
		Sublime Text (Text Editor)	/usr/bin/subl 
	Games
		Fabric Installer	fabric-installer
		IMG:/usr/share//icons/hicolor/symbolic/apps/minecraft-launcher.svg	Minecraft Launcher (Minecraft Launcher)	minecraft-launcher
		IMG:/home/fynrae/.local/share/icons/osu-wine.png	osu!	/home/fynrae/.local/bin/osu-wine 
		IMG:/home/fynrae/.local/share/flatpak/exports/share/icons/hicolor/scalable/apps/org.vinegarhq.Sober.svg	Sober (Roblox Player on Linux)	/usr/bin/flatpak run --branch=master --arch=x86_64 --command=sober --file-forwarding org.vinegarhq.Sober -- @@u  @@
	Graphics
		IMG:/usr/share//icons/hicolor/scalable/apps/org.flameshot.Flameshot.svg	Flameshot (Screenshot tool)	/usr/bin/flameshot
		My Images (Images)	images
	Internet
		Avahi SSH Server Browser	/usr/bin/bssh
		Avahi VNC Server Browser	/usr/bin/bvnc
		IMG:/usr/share//icons/hicolor/24x24/apps/brave-desktop.png	Brave (Web Browser)	brave 
		IMG:/usr/share//icons/hicolor/22x22/apps/firefox.png	Firefox (Web Browser)	/usr/lib/firefox/firefox 
		IMG:/usr/share//icons/hicolor/24x24/apps/google-chrome.png	Google Chrome (Web Browser)	/usr/bin/google-chrome-stable 
		My Browser (Browser)	mybrowser
		My Email (E-Mail)	myemail
		My Torrents (BitTorrent Client)	mytorrent
	Multimedia
		MPD Client (MPDCLient)	mpdclient
		MPD Notify (MPDNotify)	mpd-notify
		My Media (Media)	multimedia
		My Music (Music)	music
		My Videos (Multimedia player)	videos
		IMG:/usr/share//icons/hicolor/scalable/apps/com.obsproject.Studio.svg	OBS Studio (Streaming/Recording Software)	obs
		IMG:/usr/share//icons/hicolor/24x24/apps/qv4l2.png	Qt V4L2 test Utility	qv4l2
		IMG:/usr/share//icons/hicolor/24x24/apps/qvidcap.png	Qt V4L2 video capture utility	qvidcap
		VLC media player (Media player)	/usr/bin/vlc --started-from-file 
		Volume Control (Volume Control)	pavucontrol
	Office
		Define (Define)	define --gtk
		IMG:/usr/share//icons/hicolor/24x24/apps/libreoffice-startcenter.png	LibreOffice (Office)	libreoffice 
		IMG:/usr/share//icons/hicolor/24x24/apps/libreoffice-base.png	LibreOffice Base (Database Development)	libreoffice --base 
		IMG:/usr/share//icons/hicolor/24x24/apps/libreoffice-calc.png	LibreOffice Calc (Spreadsheet)	libreoffice --calc 
		IMG:/usr/share//icons/hicolor/24x24/apps/libreoffice-draw.png	LibreOffice Draw (Drawing Program)	libreoffice --draw 
		IMG:/usr/share//icons/hicolor/24x24/apps/libreoffice-impress.png	LibreOffice Impress (Presentation)	libreoffice --impress 
		IMG:/usr/share//icons/hicolor/24x24/apps/libreoffice-math.png	LibreOffice Math (Formula Editor)	libreoffice --math 
		IMG:/usr/share//icons/hicolor/24x24/apps/libreoffice-writer.png	LibreOffice Writer (Word Processor)	libreoffice --writer 
		SpellCheck (SpellCheck)	spellcheck --gtk
	Others
		IMG:/usr/share//icons/hicolor/scalable/apps/zero-trust-orange.svg	Cloudflare Zero Trust	systemctl --user start warp-taskbar
		IMG:/usr/share//icons/hicolor/scalable/apps/rofi.svg	Rofi	rofi -show
		IMG:/usr/share//icons/hicolor/scalable/apps/rofi.svg	Rofi Theme Selector	rofi-theme-selector
		Search Menu (Search Menu)	search-menu
	Settings
		Advanced Network Configuration	nm-connection-editor
		ARandR (Screen Settings)	arandr
		IMG:/usr/share//icons/hicolor/22x22/apps/blueman.png	Bluetooth Manager	blueman-manager
		Customize Look and Feel (Customize Look and Feel)	lxappearance
		IMG:/usr/share//icons/hicolor/scalable/apps/ibus-setup.svg	IBus Preferences	ibus-setup
		Pademelon Settings (Settings)	pademelon-settings
		IMG:/usr/share//icons/hicolor/scalable/apps/org.xfce.thunar.svg	Thunar Preferences	thunar-settings
	System
		IMG:/usr/share/pixmaps/Alacritty.svg	Alacritty (Terminal)	alacritty
		Avahi Zeroconf Browser	/usr/bin/avahi-discover
		Config Editor (EditConf)	config-editor
		Emoji Menu (Emojis)	emojis dmenu
		IMG:/usr/share//icons/hicolor/scalable/apps/htop.svg	Htop (Process Viewer)	xterm -e htop
		IMG:/usr/share//icons/hicolor/scalable/apps/jgmenu.svg	jgmenu (Application Menu)	jgmenu_run
		IMG:/usr/share//icons/hicolor/scalable/apps/kitty.svg	kitty (Terminal emulator)	kitty
		Konsole (Terminal)	konsole
		My Backups (Backup)	backupapp
		My Files (File Manager)	myfilemanager
		My SSH (SSH Client)	myssh
		My Terminal (Terminal Emulator)	myterminal
		My VMManager (VM Manager)	myvmmanager
		Notification Daemon (NotificationDaemon)	notify-daemon
		IMG:/usr/share//icons/hicolor/24x24/apps/java21-openjdk.png	OpenJDK Java 21 Console	/usr/lib/jvm/java-21-openjdk/bin/jconsole
		IMG:/usr/share//icons/hicolor/24x24/apps/java21-openjdk.png	OpenJDK Java 21 Shell	xterm -e /usr/lib/jvm/java-21-openjdk/bin/jshell
		Print Settings (Print Settings)	system-config-printer
		Random Wallpaper (Random Wallpaper)	randomwallpaper
		IMG:/usr/share//icons/hicolor/scalable/apps/org.gnome.Terminal.svg	Terminal	gnome-terminal
		IMG:/usr/share//icons/hicolor/scalable/apps/org.xfce.thunar.svg	Thunar File Manager (File Manager)	thunar 
		urxvt	urxvt
		urxvt (client)	urxvtc
		urxvt (tabbed)	urxvt-tabbed
		IMG:/usr/share/pixmaps/xterm-color_48x48.xpm	UXTerm	uxterm
		WezTerm	wezterm start --cwd .
		IMG:/usr/share/pixmaps/xterm-color_48x48.xpm	XTerm	xterm
awesome
	Restart awesome	echo "awesome.restart()" | awesome-client
	Exit awesome	echo "awesome.quit()" | awesome-client	
Screenshot
	Fullscreen 	flameshot screen
	Full desktop	flameshot full
	Select		flameshot gui

Power options
	Shutdown		poweroff
	Reboot			reboot
	Sleep			systectl sleep
	Suspend			systemctl suspend; betterlockscreen --lock
	Lock			betterlockscreen --lock
EOF

