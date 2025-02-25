@echo off
set "folderPath=%LOCALAPPDATA%\DayZ"

if exist "%folderPath%" (
    echo Excluindo todos os arquivos e pastas em "%folderPath%", exceto 'BasicMap', 'SchanaModParty' e 'ExpansionMod'...

    REM Apagar todos os arquivos diretamente dentro da pasta DayZ
    del /q "%folderPath%\*.*"

    REM Apagar todas as pastas, exceto BasicMap, SchanaModParty e ExpansionMod
    for /d %%D in ("%folderPath%\*") do (
        if /i not "%%~nxD"=="BasicMap" if /i not "%%~nxD"=="SchanaModParty" if /i not "%%~nxD"=="ExpansionMod" (
            echo Deletando pasta: %%D
            rmdir /s /q "%%D"
        )
    )

    echo Processo concluído.
) else (
    echo A pasta DayZ não foi encontrada em "%folderPath%".
)

echo Feito por G/
pause
