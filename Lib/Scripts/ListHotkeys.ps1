# Get script directory
$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path

# Create an empty array for the hotkeys and their descriptions
$hotkeys = @()

# Extract all the shortcut keys and their associated descriptions from *.ahk files
# that match the following format:
# ; <shortcut_key_combination>: <description>
# 
# Example:
# ; Ctrl-Alt-G: Load Google Chrome
# 
Select-String -Path "$ScriptDir\..\ShortcutKeys\*.ahk" -Pattern "^; [A-Za-z0-9- ]+: .*$" |
    ForEach-Object { $_.Matches } |
    ForEach-Object { $_.Value } |
    ForEach-Object { $_.trimstart( "; " ) } |
    ForEach-Object {
        $hotkey = $( $_ -split ': ' )[0]
        $description = $( $_ -split ': ' )[1]
        $obj = New-Object PSObject -Property @{ hotkey = $hotkey ; description = $description }
        $hotkeys += $obj
    }

# Print out a nicely formatted table, listing the hotkeys and descriptions
$hotkeys |
    Sort-Object hotkey, description |
    Format-Table hotkey, description -AutoSize