# Schedule event on Google Calendar

on run {input, parameters}
    tell application "Google Chrome Canary"
        tell window 1
            set newTab to make new tab with properties {URL:"https://www.google.com/calendar/render?action=TEMPLATE&pli=1&sf=true&output=xml"}
            repeat while loading of active tab
                delay 0.1
            end repeat
            tell active tab
                execute javascript "document.getElementById(':1p').value = ''"
                execute javascript "document.getElementById(':1p').focus()"
            end tell
            activate
        end tell
    end tell
end run
