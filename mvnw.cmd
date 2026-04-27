@REM ----------------------------------------------------------------------------
@REM Licensed to the Apache Software Foundation (ASF) under one
@REM or more contributor license agreements.  See the NOTICE file
@REM distributed with this work for additional information
@REM regarding copyright ownership.  The ASF licenses this file
@REM to you under the Apache License, Version 2.0 (the
@REM "License"); you may not use this file except in compliance
@REM with the License.  You may obtain a copy of the License at
@REM
@REM    https://www.apache.org/licenses/LICENSE-2.0
@REM
@REM Unless required by applicable law or agreed to in writing,
@REM software distributed under the License is distributed on an
@REM "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
@REM KIND, either express or implied.  See the License for the
@REM specific language governing permissions and limitations
@REM under the License.
@REM ----------------------------------------------------------------------------
@REM ----------------------------------------------------------------------------
@REM Apache Maven Wrapper startup batch script, version 3.3.4
@REM ----------------------------------------------------------------------------

@IF "%__MVNW_ARG0_NAME__%"=="" (SET __MVNW_ARG0_NAME__=%~nx0)
@SET __ MVNW_CMD__=%COMSPEC% /D /C
@SET __MVNW_JAVAEXE__=java.exe

@SET __MVNW_WRAPPER_JAR__=%~dp0.mvn\wrapper\maven-wrapper.jar
@SET __MVNW_WRAPPER_PROPS__=%~dp0.mvn\wrapper\maven-wrapper.properties
@SET __MVNW_WRAPPER_LAUNCHER__=org.apache.maven.wrapper.MavenWrapperMain

@SETLOCAL

@SET MAVEN_PROJECTBASEDIR=%~dp0
@SET MAVEN_HOME=%~dp0.mvn\wrapper\dists

@FOR /F "usebackq tokens=1,2 delims==" %%A IN ("%__MVNW_WRAPPER_PROPS__%") DO (
  @IF "%%A"=="distributionUrl" SET DOWNLOAD_URL=%%B
)

@IF NOT EXIST "%MAVEN_HOME%" MKDIR "%MAVEN_HOME%"

@SET MAVEN_ZIP=%MAVEN_HOME%\apache-maven.zip

@IF NOT EXIST "%MAVEN_HOME%\apache-maven-3.9.14" (
  @ECHO Downloading Apache Maven 3.9.14...
  powershell -Command "Invoke-WebRequest -Uri '%DOWNLOAD_URL%' -OutFile '%MAVEN_ZIP%'"
  powershell -Command "Expand-Archive -Path '%MAVEN_ZIP%' -DestinationPath '%MAVEN_HOME%'"
  @DEL "%MAVEN_ZIP%"
)

@SET PATH=%MAVEN_HOME%\apache-maven-3.9.14\bin;%PATH%

@mvn %*

@ENDLOCAL
