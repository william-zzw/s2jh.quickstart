@echo off
set PORT=8080
set JAVA_OPT=-Xms256m -Xmx1024m -XX:MaxPermSize=128m
echo Prepare to clean temp work dir and restore files...
rm -fr work
mkdir work\webapp
unzip showcase-1.0.0-simplified.war -d work\webapp
copy lib\* work\webapp\WEB-INF\lib
echo ---------------------------------------------------------------
echo [INFO] Please wait a moment for startup finish, when you see:
echo [INFO]   ...Started SelectChannelConnector@0.0.0.0:%PORT%...
echo [INFO] then use Firefox to visit the following URL:
echo [INFO] http://localhost:%PORT%/showcase
echo ---------------------------------------------------------------
java %JAVA_OPT% -jar showcase-1.0.0-simplified.war -Dport=%PORT%
