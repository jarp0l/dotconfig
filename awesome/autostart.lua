-- Standard awesome library
local spawn = require("awful.spawn")

-- xautolock
spawn.with_shell("sleep 1; xautolock -time 10 -locker slock -nowlocker slock ")

-- Volume icon
spawn.with_shell("sleep 2; ~/.config/awesome/scripts/check_running.sh volumeicon")

-- Network applet
spawn.with_shell("sleep 7; nm-applet")

-- Start policykit agent for authentications
os.execute("/usr/lib/polkit-kde-authentication-agent-1 &")

-- Start flameshot utility
os.execute("~/.config/awesome/scripts/check_running.sh flameshot &")
