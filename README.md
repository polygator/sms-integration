# Sms-integration

Polygator hardware has several ways of integration with external SMS-servers

## Way #1: as a pool of GSM modems reacheable via TCP/IP (also referenced as Ethernet-modems) or TTY

In order to use this way, you need to have an SMS-server software supporting such method of communicating with GSM-modems.

### Linux SMS-software supporting Ethernet-modems and related config-file samples

- kannel.conf - sample config-file for pointing [Kannel: Open Source WAP and SMS gateway](https://www.kannel.org/) (Linux, free) server to remote Ethernet-modems. Gsm-gateway G8/G20/K32/Wireless-card modems are accessible this way when original GSM-gateway software configured properly, or when installed as a modem-pool.

- kannel_playsms.conf - example of modified kannel.conf to be used as a reference for configuring the [PlaySMS - GUI for various SMS-server software](https://playsms.org/)

- smsd.conf - sample config-file for pointing [SMS Server Tools 3](http://smstools3.kekekasvi.com/) (Linux, free) server to remote Ethernet-modems. Gsm-gateway G8/G20/K32/Wireless-card modems are accessible this way when original GSM-gateway software configured properly, or when installed as a modem-pool.

### Windows SMS-software with Ethernet-modem support

- [Diafaan](https://www.diafaan.com/) (Windows, commercial) - natively supports GSM Modems via TCP/IP, each channel created as a separate Gateway. To be configured via GUI.

- [NowSMS](https://www.nowsms.com/) (Windows, commercial) - natively supports Tcp/Ip Ethernet Modems. To be configured via GUI.

- [Auron (former ActivExperts SMS Server)](https://www.auronsoftware.com/) (Windows, commercial) - natively supports connecting Tcp/Ip modems. To be configured via GUI.

### In case your SMS-software is able to use TTY-ports/COM-ports only

- Install the Sms-software directly in Linux environment (server with GSM-card or boxed GSM-gateway device) and configure it to access modems via TTY locally.

- In order to use TTY/COM-only SMS-software on a remote PC, it worth to consider using additional virtual COM-port software with Serial-to-Ethernet software to make remote Ethernet-modems available as a local TTY/COMs. For example [com0com](https://sourceforge.net/projects/com0com/) (Windows, free) or several commercial titles.

## Way #2: via SMPP protocol

## Way #3: HTTP
