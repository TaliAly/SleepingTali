# Support
## What support means?

This means this section is for show and solve some problems I happen to encounter while using Arch so I have something to search for it


### Visual Studio

If Visual Studio doesn't recognize Fira Code or it doesn't use the font correctly you can see [this question on Stackoverflow](https://stackoverflow.com/questions/60924798/cant-get-firacode-to-show-despite-the-font-installed-and-ligatures-activated-in)

> "editor.fontLigatures":"'zero', 'ss02', 'ss03', 'ss04', 'ss05', 'calt'",

or

> "editor.fontLigatures": true,

<br>

Visual Studio on Arch have some problems with wm's while trying to login in on github, try searching for this:
[this Thread](https://code.visualstudio.com/docs/editor/settings-sync#_troubleshooting-keychain-issues).

> Added *gnome-keyring* to installer

It seems like on Sway/Wayland you need to add this to the .bashrc or if using sway to `exec`
> exec eval $(gnome-keyring-daemon --start)
> exec export SSH_AUTH_SOCK

<br>


It seems that in wm you could need a polkit agent, in that case you can use [this]("https://archlinux.org/packages/?name=lxqt-policykit"), to run it you'll have to add this line in the config of the wm you have choose add this line in the config of the wm you have choose

> /usr/bin/lxqt-policykit-agent &
