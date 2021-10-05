Invoke-WebRequest https://aka.ms/download-jdk/microsoft-jdk-17.35.1-windows-x64.msi -UseBasicParsing -OutFile $Env:TEMP\microsoft-jdk-17.35.1-windows-x64.msi
Start-Process -Wait -FilePath msiexec -ArgumentList /i, "$Env:TEMP\microsoft-jdk-17.35.1-windows-x64.msi", 'ADDLOCAL="FeatureMain,FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome"', 'INSTALLDIR="C:\Program Files\Java\jdk-17\"', /quiet, /norestart -Verb RunAs

