@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  client startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and CLIENT_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\client-0.0.1-SNAPSHOT.jar;%APP_HOME%\lib\commons-0.0.1-SNAPSHOT.jar;%APP_HOME%\lib\commons-lang3-3.12.0.jar;%APP_HOME%\lib\javafx-fxml-17.0.2-win.jar;%APP_HOME%\lib\javafx-fxml-17.0.2.jar;%APP_HOME%\lib\javafx-controls-17.0.2-win.jar;%APP_HOME%\lib\javafx-controls-17.0.2.jar;%APP_HOME%\lib\javafx-graphics-17.0.2-win.jar;%APP_HOME%\lib\javafx-graphics-17.0.2.jar;%APP_HOME%\lib\javafx-base-17.0.2-win.jar;%APP_HOME%\lib\javafx-base-17.0.2.jar;%APP_HOME%\lib\jersey-client-3.0.3.jar;%APP_HOME%\lib\jersey-hk2-3.0.3.jar;%APP_HOME%\lib\jersey-media-json-jackson-3.0.3.jar;%APP_HOME%\lib\jakarta.activation-api-2.0.1.jar;%APP_HOME%\lib\guice-5.0.1.jar;%APP_HOME%\lib\spring-boot-starter-websocket-2.6.3.jar;%APP_HOME%\lib\webjars-locator-core-0.46.jar;%APP_HOME%\lib\sockjs-client-1.0.2.jar;%APP_HOME%\lib\stomp-websocket-2.3.3.jar;%APP_HOME%\lib\bootstrap-3.3.7.jar;%APP_HOME%\lib\jquery-3.1.1-1.jar;%APP_HOME%\lib\annotations-20.1.0.jar;%APP_HOME%\lib\jakarta.persistence-api-2.2.3.jar;%APP_HOME%\lib\jersey-common-3.0.3.jar;%APP_HOME%\lib\jersey-entity-filtering-3.0.3.jar;%APP_HOME%\lib\jakarta.ws.rs-api-3.0.0.jar;%APP_HOME%\lib\hk2-locator-3.0.1.jar;%APP_HOME%\lib\hk2-api-3.0.1.jar;%APP_HOME%\lib\hk2-utils-3.0.1.jar;%APP_HOME%\lib\jakarta.inject-api-2.0.0.jar;%APP_HOME%\lib\javassist-3.25.0-GA.jar;%APP_HOME%\lib\spring-boot-starter-web-2.6.3.jar;%APP_HOME%\lib\spring-boot-starter-json-2.6.3.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.13.1.jar;%APP_HOME%\lib\jackson-module-parameter-names-2.13.1.jar;%APP_HOME%\lib\jackson-module-jaxb-annotations-2.13.1.jar;%APP_HOME%\lib\jackson-core-2.13.1.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.13.1.jar;%APP_HOME%\lib\jackson-databind-2.13.1.jar;%APP_HOME%\lib\jackson-annotations-2.13.1.jar;%APP_HOME%\lib\jaxb-api-2.3.1.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\guava-30.1-jre.jar;%APP_HOME%\lib\spring-messaging-5.3.15.jar;%APP_HOME%\lib\spring-websocket-5.3.15.jar;%APP_HOME%\lib\spring-boot-starter-2.6.3.jar;%APP_HOME%\lib\spring-boot-starter-logging-2.6.3.jar;%APP_HOME%\lib\logback-classic-1.2.10.jar;%APP_HOME%\lib\log4j-to-slf4j-2.17.1.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.33.jar;%APP_HOME%\lib\slf4j-api-1.7.33.jar;%APP_HOME%\lib\classgraph-4.8.69.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-2.6.3.jar;%APP_HOME%\lib\jakarta.annotation-api-2.0.0.jar;%APP_HOME%\lib\osgi-resource-locator-1.0.3.jar;%APP_HOME%\lib\aopalliance-repackaged-3.0.1.jar;%APP_HOME%\lib\javax.activation-api-1.2.0.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.5.0.jar;%APP_HOME%\lib\error_prone_annotations-2.3.4.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\spring-webmvc-5.3.15.jar;%APP_HOME%\lib\spring-web-5.3.15.jar;%APP_HOME%\lib\spring-boot-autoconfigure-2.6.3.jar;%APP_HOME%\lib\spring-boot-2.6.3.jar;%APP_HOME%\lib\spring-context-5.3.15.jar;%APP_HOME%\lib\spring-aop-5.3.15.jar;%APP_HOME%\lib\spring-beans-5.3.15.jar;%APP_HOME%\lib\spring-expression-5.3.15.jar;%APP_HOME%\lib\spring-core-5.3.15.jar;%APP_HOME%\lib\snakeyaml-1.29.jar;%APP_HOME%\lib\tomcat-embed-websocket-9.0.56.jar;%APP_HOME%\lib\tomcat-embed-core-9.0.56.jar;%APP_HOME%\lib\tomcat-embed-el-9.0.56.jar;%APP_HOME%\lib\spring-jcl-5.3.15.jar;%APP_HOME%\lib\logback-core-1.2.10.jar;%APP_HOME%\lib\log4j-api-2.17.1.jar


@rem Execute client
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %CLIENT_OPTS%  -classpath "%CLASSPATH%" client.Main %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable CLIENT_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%CLIENT_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
