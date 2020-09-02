# Sms-integration files: Gsm-gateway Polygator G8 G20

## GSM-gateway with original Polygator software

- event.sh - Inbound events handler sample. The script runs each time SMS/Call arrive to GSM-module and receives event information as a list of command-line parameters. The sample script sends event information (SMS or  CALL event) as a JSON string to specified server. If the server is unreacheable - event data will be lost. User can customize the script arbitrary.

- receive.php - Sample PHP script to receive JSON payload from sample event.sh script.

## GSM-gateway configured as a modem-pool

- ser2net.conf - sample config-file for ser2net utility running onboard. Makes modem pool GSM-ports accessible via Ethernet/Internet.
