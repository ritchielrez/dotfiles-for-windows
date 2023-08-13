@echo off
REM Tell git where is our yadm dotfiles repo is stored
set "GIT_DIR=%USERPROFILE%\.local\share\yadm\repo.git"

REM Except any number arguments passed to this batch file,
REM then pass it to git
git %*

REM Now remove the previously created GIT_DIR, as hard coding
REM the GIT_DIR path does not allow us to run git commands for other git repos
set "GIT_DIR="
