Features
--------
  * `Modkey + Shift + Enter` is Terminal
  * `Modkey + Control + r` is reload rc.lua
  * `Modkey + t` to attach/detach window from tiles
  * `Modkey + shift + t` to toggle titlebars
  * Battery widget - autodetects if you have battery, adds widget
  * Network widget - pick your devices, eth0 for ethernet, wlan0 for wireless or custom
  * Number taglists in various number systems - arabic (1,2,3...), chinese
  * [mpd](http://mpd.wikia.com/wiki/Music_Player_Daemon_Wiki) widget - autodetects if song player, adds widget (requires curl)
  * Random background picker (requires feh)

Credits
-------
  * rc.lua and zhongguo thing is based off [Adrian C.'s awesome configuration](http://git.sysphere.org/awesome-configs/). Licensed [CC Attribute Share-Alike](http://creativecommons.org/licenses/by-sa/3.0/).
  * Some icons used on the bar are from [Yusuke Kamiyaman](http://p.yusukekamiyamane.com/). [Creative Commons Attribution](http://creativecommons.org/licenses/by/3.0/).

Installation
------------
To use this configuration, git clone this, and mv awesome-config to ~/.config/awesome

  * `cd ~/.config; git clone https://github.com/Amatsukan/AwesomeConfigs.git`
  * `cd ~/.config/AwesomeConfigs

Configuration
-------------
  Create a file called `personal.lua` in `~/.config/awesome`. Here are some things you can place in
  your `~/.config/awesome/personal.lua` file:

```lua
terminal = 'xterm' -- can be app in path, or full path e.g. /usr/bin/xterm
editor = "vim"

wallpaper_dir = os.getenv("HOME") .. "/yourwallpaper_dir/" -- grabs a random bg

taglist_numbers = "arabic" -- we support arabic (1,2,3...),
-- arabic, chinese, {east|persian}_arabic, roman, thai, random

cpugraph_enable = true -- show CPU graph
cputext_format = " $1%" -- %1 average cpu, %[2..] every other thread individually

membar_enable = true -- show memory bar
memtext_format = " $1%" -- %1 percentage, %2 used %3 total %4 free

date_format = "%a %m/%d/%Y %l:%M%p" -- refer to http://en.wikipedia.org/wiki/Date_(Unix) specifiers

networks = {'eth0', 'wlan0'} -- Add your devices network interface here netwidget, only show one that works
```

  save.

  You can use `Mod + Control + r` to reload configuation.

### Autorun
  Create a file called `autorun.lua` in `~/.config/awesome`.

  First is the binary of the app, the second is the arguments. So to load `xscreensaver -no-splash` we do:
  `run_once("xscreensaver", "-no-splash")`.

```lua
run_once("xscreensaver", "-no-splash")         -- starts screensaver daemon 
run_once("xsetroot", "-cursor_name left_ptr")  -- sets the cursor icon

--run_once("redshift", "-o -l 0:0 -b 0.5 -t 6500:6500") -- brightness
run_once("ibus-daemon", "--xim") -- ibus
run_once(os.getenv("HOME") .. "/.dropbox-dist/dropboxd") -- dropbox
run_once("nm-applet") -- networking

run_once("wmname", "LG3D") -- java fix

run_once("sh " .. os.getenv("HOME") .. "/.screenlayout/dual-monitor.sh") -- set screens up
```

Optional stuff
--------------

[Terminus](http://terminus-font.sourceforge.net/) is a crisp font pleasant to the eyes.

  * FreeBSD: `cd /usr/ports/x11-fonts/terminus-font/ && make install clean` or `pkg_add -r terminus-font`
  * ArchLinux: `pacman -S terminus-font`
  * Debian / Ubuntu: `apt-get install xfonts-terminus`
  * Gentoo: `emerge -av media-fonts/terminus-font`
  * Fedora / CentOS / Redhat: `yum install terminus-fonts`

In Arch, you may have to edit /etc/X11/xorg.conf and have your font dir to be scanned:

```
Section "Files"
	FontPath     "/usr/share/fonts/local"
EndSection
```

You may also want to:

  * `cd /etc/fonts/conf.d`
  * `ln -sf ../conf.avail/10-autohint.conf ./`
  * `ln -sf ../conf.avail/70-yes-bitmaps.conf ./`

Then restart X.
