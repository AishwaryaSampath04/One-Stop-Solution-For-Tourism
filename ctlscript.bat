@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\ingres\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\ingres\scripts\ctl.bat START)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\mysql\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\mysql\scripts\ctl.bat START)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\postgresql\scripts\ctl.bat START)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\apache\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\apache\scripts\ctl.bat START)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\openoffice\scripts\ctl.bat START)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\apache-tomcat\scripts\ctl.bat START)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\resin\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\resin\scripts\ctl.bat START)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\jetty\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\jetty\scripts\ctl.bat START)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\subversion\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\lucene\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\lucene\scripts\ctl.bat START)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\third_application\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\third_application\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\third_application\scripts\ctl.bat STOP)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\lucene\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\subversion\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\subversion\scripts\ctl.bat STOP)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\jetty\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\jetty\scripts\ctl.bat STOP)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\resin\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\resin\scripts\ctl.bat STOP)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\Users\ABHISHEK\.vscode\Travel Agency\Images\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\openoffice\scripts\ctl.bat STOP)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\apache\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\apache\scripts\ctl.bat STOP)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\ingres\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\ingres\scripts\ctl.bat STOP)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\mysql\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\mysql\scripts\ctl.bat STOP)
if exist C:\Users\ABHISHEK\.vscode\Travel Agency\Images\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\ABHISHEK\.vscode\Travel Agency\Images\postgresql\scripts\ctl.bat STOP)

:end

