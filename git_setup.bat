@echo off
cmdkey /delete:"git:https://github.com"
echo 0 de 6: CREDENCIAIS DO GITHUB REMOVIDAS

git remote remove origin 2>nul
echo 1 de 6: REMOVIDO REMOTE

git init
echo 2 de 6: FEITO INIT

git config --global user.name "leandro-etec-2025"
git config --global user.email "leandrocesardacruz@gmail.com"
echo 3 de 6: CONFIGURADO GLOBAL

git remote get-url origin >nul 2>&1
if errorlevel 1 (
    git remote add origin "https://github.com/leandro-etec-2025/SiteHTML.git"
    echo 4 de 6: ADICIONADO REMOTE
)

echo.
echo 5 de 6: LISTANDO ARQUIVOS
dir /a

echo 6 de 6: PUXANDO DO REMOTO
git pull origin main
git checkout -b main

echo.
echo Configuracoes do Git foram aplicadas com sucesso!
pause
start "" cmd /c del "%~f0"
