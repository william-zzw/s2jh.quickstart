@echo off
set PORT=8080
set JAVA_OPT=-Xms256m -Xmx1024m -XX:MaxPermSize=128m
rm -fr work
echo ---------------------------------------------------------------
echo [INFO] Please wait a moment for startup finish, when you see:
echo [INFO]   ...Started SelectChannelConnector@0.0.0.0:%PORT%...
echo [INFO] then use Firefox to visit the following URL:
echo [INFO] http://localhost:%PORT%/showcase
echo ---------------------------------------------------------------
java %JAVA_OPT% -jar showcase.war -Dport=%PORT%
