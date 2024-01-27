Rem Creates a Directory for Cyber Triage Output
mkdir C:\windows\temp\_ct

Rem Downloads the Cyber Triage Collector
curl -L -o c:\windows\temp\_ct\cyber_triage_collector.exe "https://download.cybertriage.com/collector/CyberTriageCollector.exe"

Rem Downloads an S3 Configuration Specific for the case
curl -L -o C:\windows\temp\_ct\s3config.conf ""

Rem runs Cyber Triage and will upload to an S3 Bucket created specifically for this case
c:\windows\temp\_ct\cyber_triage_collector.exe --tempdir c:\windows\temp\_ct --s3_upload_config c:\windows\temp\_ct\s3config.conf