@SET DEVENV_PREFIX=%CD%\scripts\prefix
@SET VS_BASE_PATH=%DEVENV_PREFIX%\Program Files\MICROSOFT VISUAL STUDIO .NET
@SET MS_VC_PATH=%VS_BASE_PATH%\VC7
@SET DXSDK_DIR=%DEVENV_PREFIX%\mssdk

@SET PATH=%MS_VC_PATH%\Bin;%VS_BASE_PATH%\FrameworkSDK\Bin;%VS_BASE_PATH%\Common7\IDE;%PATH%
@SET INCLUDE=%DXSDK_DIR%\include;%MS_VC_PATH%\INCLUDE;%MS_VC_PATH%\PlatformSDK\include\prerelease;%MS_VC_PATH%\PlatformSDK\include
@SET LIB=%DXSDK_DIR%\lib;%MS_VC_PATH%\LIB;%MS_VC_PATH%\PlatformSDK\lib\prerelease;%MS_VC_PATH%\PlatformSDK\lib

@ECHO You have entered Touhou 06 devenv, have fun~!
