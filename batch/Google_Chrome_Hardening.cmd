@ECHO OFF
TITLE Google Chrome Hardening

REM https://www.chromium.org/administrators/policy-list-3

REM Change working directory
PUSHD %~dp0

ECHO Enable or disable PIN-less authentication for remote access hosts' is set to 'Disabled'
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v RemoteAccessHostAllowClientPairing /d "0" /t REG_DWORD /f >NUL 2>&1

ECHO Keep cookies for the duration of the session
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultCookiesSetting /d "4" /t REG_DWORD /f >NUL 2>&1

ECHO Click to play Flash plugins
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultPluginsSetting /d "3" /t REG_DWORD /f >NUL 2>&1

ECHO Enable saving passwords to the password manager' is set to 'Disabled'
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v PasswordManagerEnabled /d "0" /t REG_DWORD /f >NUL 2>&1

ECHO Allow running plugins that are outdated' is set to 'Disabled'
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v AllowOutdatedPlugins /d "0" /t REG_DWORD /f >NUL 2>&1

ECHO Continue running background apps when Google Chrome is closed' is set to 'Disabled'
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v BackgroundModeEnabled /d "0" /t REG_DWORD /f >NUL 2>&1

ECHO Enable AutoFill' is set to 'Disabled'
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v AutoFillEnabled /d "0" /t REG_DWORD /f >NUL 2>&1

ECHO Enable Google Cloud Print Proxy' is set to 'Disabled'
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v CloudPrintProxyEnabled /d "0" /t REG_DWORD /f >NUL 2>&1

ECHO Enable reporting of usage and crash-related data' is set to 'Disabled'
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v MetricsReportingEnabled /d "0" /t REG_DWORD /f >NUL 2>&1

ECHO Enable Site Isolation for every site' is set to 'Enabled'
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v SitePerProcess /d "1" /t REG_DWORD /f >NUL 2>&1

ECHO Enable submission of documents to Google Cloud print' is set to 'Disabled'
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v CloudPrintSubmitEnabled /d "1" /t REG_DWORD /f >NUL 2>&1

ECHO Import saved passwords from default browser on first run' is set to 'Disabled'
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v ImportSavedPasswords /d "0" /t REG_DWORD /f >NUL 2>&1

ECHO Disable synchronization of data with Google
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v SyncDisabled /d "1" /t REG_DWORD /f >NUL 2>&1

ECHO Disable the integrated Google Translate service on Chromium
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v TranslateEnabled /d "0" /t REG_DWORD /f >NUL 2>&1

ECHO Disable on-screen keyboard
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v VirtualKeyboardEnabled /d "0" /t REG_DWORD /f >NUL 2>&1

ECHO Do not allow any site to show desktop notifications
REG ADD "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultNotificationsSetting /d "2" /t REG_DWORD /f >NUL 2>&1

ECHO Deleting login data ...
DEL /Q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Login Data" >NUL 2>&1

REM Restore working directory
POPD

ECHO.
ECHO Done.
PAUSE