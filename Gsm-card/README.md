# Sms-integration files: PCI/PCI-express card Polygator with 4/8 wireless modules, for GSM/WCDMA networks

## Wireless card Polygator configured for Asterisk

### Outbound SMS

Example of sending SMS using Asterisk CLI via channel #1 (gsm-00)

~~~bash
CLI> polygator channel gsm gsm-00 sms new +1234567890 test-sms
~~~

### Inbound SMS

- extensions.conf - File contains sample record declaring context “gsm_sms” and extension “sms” and example of (optional) forwarding SMS-data to custom PHP-script. Incoming message will trigger Asterisk’s dialplan to execute script at /home/test.php. Command line parameter contains expected SMS data fields separated by ^. Way of separating and transferring data is arbitrary.

- Via Asterisk CLI or via file polygator.conf specify context and extension for incoming SMS.

__Sample Asterisk CLI commands for channel #4 (gsm-03):__

~~~bash
CLI> polygator channel gsm gsm-3 set sms.ntf.en yes
CLI> polygator channel gsm gsm-3 set sms.ntf.ctx gsm_sms
CLI> polygator channel gsm gsm-3 set sms.ntf.exten sms
~~~~

Which means, we __set__: SMS feature – yes, context – gsm_sms, extension – sms.

## Wireless card Polygator configured as a modem-pool (Linux)

- ser2net.conf - sample config-file for ser2net utility running onboard. Makes modem pool GSM-ports accessible via Ethernet/Internet.
