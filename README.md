I recently got a new MacBook Pro and found myself unable to run many Minecraft modpacks running MultMC.  

After playing around and googling, I ended up writing a pre-launch script that does the following to Minecraft instances before launch:
1. Adding LWJGL 3.3.0 to each project (replacing the default version)
2. Adding Java-OBJC bridge jar version 1.1-SNAPSHOT, which contains support for M1 Macs.

This blog goes into more and better detail as to the underlying issues:
https://www.thecrosseroads.net/2021/12/minecraft-on-apple-silicon/

This script requires a copy of jq installed using homebrew (for processing json files).

`
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install jq
`

I've had success with this script with the latest development version of MultiMC.
Please feel free to improve upon this project.

Special thanks to @Homebrew, @LWJGL, @shannah, @yusefnapora, and @mjwells2002 for doing the heavy lifting.
https://brew.sh/
https://www.lwjgl.org/
https://github.com/shannah/Java-Objective-C-Bridge
https://github.com/yusefnapora/m1-multimc-hack
https://github.com/mjwells2002/minecraft-lwjgl-macos
