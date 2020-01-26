echo off

:loop
copy fukuso.tex kensaku.tex
platex fukuso
if %errorlevel%	geq 1 goto loop
echo	%errorlevel%

platex kensaku
del kensaku.tex
rem call dellog.bat
rem dviout.exe kaiseki.dvi

pause
goto loop