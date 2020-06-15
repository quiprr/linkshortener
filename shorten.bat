REM This is intended to be ran thru Windows with cmd and Git Bash.
REM URL Shortening script by Ametrine. Find us at https://ametrine.dev/.
:config
@echo off
title URL Shortening thru GitHub Pages
goto :prompt
:prompt
cls
echo.
echo What link would you like shortened?
set /p link="Link: "
cls
echo.
echo What would you like the shortened URL to be?
set /p url="Shortened URL: "
echo --- >> %url%.md
echo title: redirect to %link% >> %url%.md
echo redirect_to: %link% >> %url%.md
echo --- >> %url%.md
echo File written.
cls
git pull origin master
cls
git add .
cls
git commit -m "new url"
cls
git push origin master
goto :confirm
:confirm
cls
echo.
echo Your URL is now live at `https://[domain CHANGE THIS]/%url%`
echo It may take around 30 seconds for the redirect to go live,
echo due to GitHub Pages pre-publish site building.
echo.
pause /nul
exit