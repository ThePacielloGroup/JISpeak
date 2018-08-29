@echo off
setlocal EnableExtensions EnableDelayedExpansion
set LOG="%USERPROFILE%\JAWSInspectSpeechOutput.csv"
set JI=%ProgramFiles%\Freedom Scientific\Inspect\Inspect.exe
set USAGE1="Usage: 'jispeak on' to begin capturing, or 'jispeak off' to stop capturing."
set USAGE2="(NOTE: Capturing will overwrite %LOG% if it exists)"
set STARTCAPTURE="Capturing JAWS Inspect speech output to: %LOG%"
set STOPCAPTURE="Capturing complete!"
set OVERWRITEWARNING="!LOG! already exists. If you continue, the file will be overwritten. Do you want to continue?"

if exist "!JI!" (
	if "%1%"=="on" (
		if exist !LOG! (
			choice /c YN /m !OVERWRITEWARNING!
			if !errorlevel!== 1 (
				goto captureon
			) else (
				goto end
			)
		) else (
			goto captureon
		)
	) else if "%1%"=="off" (
		goto captureoff
	) else (
		echo !USAGE1:^"=!
		echo !USAGE2:^"=!
		goto :end
	)
) else (
	echo "Couldn't find JAWS Inspect!"
	echo "!JI!"
)

:captureon
echo !STARTCAPTURE:^"=!
start /b "" "!JI!" /startspeechcapture:"!LOG!"
goto :end

:captureoff
echo !STOPCAPTURE:^"=!
start /b "" "!JI!" /stopspeechcapture
dir "!LOG!"
goto :end

:end
endlocal
exit /b