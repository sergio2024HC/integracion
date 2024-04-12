
#!/bin/bash
dotnet test ./../ \
/p:CollectCoverage=true \
/p:Include=[*]* \
/p:Exclude=[*]*Test* \
/p:CoverletOutputFormat=\"opencover,cobertura\" \
--logger trx --results-directory ./../_temp/

"./../tools/reportgenerator" \
-reports:"../**/coverage.opencover.xml" \
-targetdir:"./../_temp/Report"
