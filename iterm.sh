#!/bin/zsh

# iTerm settings

# Command + left arrow
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :GlobalKeyMap:0xf702-0x300000:Action integer 11'
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :GlobalKeyMap:0xf702-0x300000:Text string 0x01'

# Command + right arrow
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :GlobalKeyMap:0xf703-0x300000:Action integer 11'
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :GlobalKeyMap:0xf703-0x300000:Text string 0x05'

# Option + left arrow
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :"New Bookmarks":0:"Keyboard Map":"0xf702-0x280000":Action integer 10'
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :"New Bookmarks":0:"Keyboard Map":"0xf702-0x280000":Text string b'

# Option + right arrow
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :"New Bookmarks":0:"Keyboard Map":"0xf703-0x280000":Action integer 10'
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :"New Bookmarks":0:"Keyboard Map":"0xf703-0x280000":Text string f'

# Hotkey
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :Hotkey bool true'
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :HotkeyChar integer 92'
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :HotkeyCode integer 42'
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :HotkeyModifiers integer 1048840'

# Appearance
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :"New Bookmarks":0:Columns integer 250'
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :"New Bookmarks":0:"Initial Use Transparency" bool false'
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :"New Bookmarks":0:Screen integer 0'
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :StatusBarPosition integer 1'

# Settings
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :"New Bookmarks":0:"Scrollback Lines" integer 10000'
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :"New Bookmarks":0:"Silence Bell" bool true'
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :"New Bookmarks":0:"Window Type" integer 6'
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :OpenArrangementAtStartup bool false'
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :OpenNoWindowsAtStartup bool true'

# Font
/usr/libexec/PlistBuddy ~/Library/Preferences/com.googlecode.iterm2.plist -c 'Set :"New Bookmarks":0:"Normal Font" string "SourceCodeProForPowerline-Regular 12"'
