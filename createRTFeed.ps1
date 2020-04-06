# Ensures that Invoke-WebRequest uses TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$rtOutput = Invoke-WebRequest 'https://www.rescuetime.com/anapi/highlights_feed?key=B6354JhgyPq_R4si3P8PRewI6mIWRlbX6aRWW9hE' -UseBasicParsing | ConvertFrom-Json
$rtOutput | Select-Object date,description | Sort-Object date | Format-Table description -GroupBy date
