@echo off
setlocal ENABLEDELAYEDEXPANSION

REM Change to the folder where this script is located
cd /d "%~dp0"

REM Ensure this is a git repo; if not, initialize one for this project
if not exist ".git" (
    echo [INFO] .git folder not found - initializing a new git repository here.
    git init
    if errorlevel 1 (
        echo [ERROR] git init failed. Is git installed and in PATH?
        pause
        exit /b 1
    )
    REM Set a default remote pointing at the AI_use_crash_course repo (can be adjusted later if needed)
    git remote add origin https://github.com/neo0oen619/AI_use_crash_course.git 2>nul
)

REM We always push to branch "main" on the remote
set TARGET_BRANCH=main

REM Get commit message from arguments or ask the user
set COMMIT_MSG=%*
if "%COMMIT_MSG%"=="" (
    set /p COMMIT_MSG=Enter commit message: 
)

if "%COMMIT_MSG%"=="" (
    echo [ERROR] No commit message provided.
    pause
    exit /b 1
)

echo.
echo This script will take the files in this folder and push them to GitHub.
echo It does NOT pull from GitHub first.

REM Ask for GitHub username and token
echo.
set /p GH_USER=GitHub username (without @github.com): 
set /p GH_TOKEN=GitHub personal access token (visible as you type): 

if "%GH_USER%"=="" (
    echo [ERROR] No username provided.
    pause
    exit /b 1
)

if "%GH_TOKEN%"=="" (
    echo [ERROR] No token provided.
    pause
    exit /b 1
)

REM Show current local branch (for info only)
set CUR_BRANCH=
for /f "usebackq delims=" %%B in (`git rev-parse --abbrev-ref HEAD 2^>NUL`) do (
    set CUR_BRANCH=%%B
)

echo.
if "%CUR_BRANCH%"=="" (
    echo Current local branch: (none yet, will create "%TARGET_BRANCH%")
) else (
    echo Current local branch: %CUR_BRANCH%
)
echo Target branch on GitHub: %TARGET_BRANCH%

echo.
echo Staging all changes in this folder...
git add -A

echo.
echo Committing with message: "%COMMIT_MSG%"
REM Use --allow-empty so a commit is created even if there are no file diffs,
REM which ensures a commit exists for each run.
git commit -m "%COMMIT_MSG%" --allow-empty
if errorlevel 1 (
    echo.
    echo [ERROR] git commit failed.
    pause
    exit /b 1
)

REM Ensure the current branch is named "main"
git branch -M %TARGET_BRANCH% >nul 2>&1

echo.
echo Pushing to your GitHub repo using the username and token you entered...
echo Repo: https://github.com/neo0oen619/AI_use_crash_course.git
REM Force-push so local state is treated as the source of truth.
git push "https://%GH_USER%:%GH_TOKEN%@github.com/neo0oen619/AI_use_crash_course.git" %TARGET_BRANCH% --force

if errorlevel 1 (
    echo.
    echo [ERROR] git push failed.
    pause
    exit /b 1
)

echo.
echo ==========================================
echo Done! GitHub now has a commit with the files from this folder.
echo ==========================================
pause
endlocal
exit /b 0

