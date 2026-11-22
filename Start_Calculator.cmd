@echo off
setlocal
set "METRIC_EXE=%~dp0StandaloneMetricCalculator.exe"
if not exist "%METRIC_EXE%" set "METRIC_EXE=%~dp0release\StandaloneMetricCalculator.exe"
if not exist "%METRIC_EXE%" (
    echo Calculator executable was not found.
    echo Extract the complete release ZIP before starting the calculator.
    pause
    exit /b 1
)
rem Reuse matching MATLAB libraries when MATLAB R2021a is already installed.
rem Machines without MATLAB use the separately installed R2021a Runtime.
for /f "delims=" %%M in ('where matlab.exe 2^>nul') do (
    for %%B in ("%%~dpM..") do (
        if exist "%%~fB\runtime\win64\mclmcrrt9_10.dll" (
            set "PATH=%%~fB\runtime\win64;%%~fB\bin\win64;%%~fB\sys\os\win64;%PATH%"
        )
    )
)
if "%~1"=="" (
    start "" "%METRIC_EXE%"
) else (
    "%METRIC_EXE%" %*
)
endlocal
