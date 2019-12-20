# My Hackintosh

## Current parts

| Component | Specific component                                                                                                 | URL                                                                                                                                                                          |
| --------- | ------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Mainboard | Gigabyte Z68X-UD3P-B3                                                                                              | https://www.gigabyte.com/Motherboard/GA-Z68X-UD3P-B3-rev-10#ov                                                                                                               |
| Processor | Intel Core i5-2500 3.30 GHz, Socket 1155                                                                           | https://ark.intel.com/content/www/us/en/ark/products/52209/intel-core-i5-2500-processor-6m-cache-up-to-3-70-ghz.html                                                         |
| RAM       | Corsair XMS3 16 GB DDR3 1600 MHz                                                                                   |                                                                                                                                                                              |
| Graphic   | Sapphire RX 5500 XT Pulse 8G                                                                                       | https://www.caseking.de/sapphire-pulse-radeon-rx-5500-xt-8g-8192-mb-gddr6-gcsp-207.html                                                                                      |
| PMU       | beQuiet! PurePower 430 W                                                                                           | https://www.amazon.de/quiet-Pure-Power-L8-CM-430W-Netzteil/dp/B005JRGVAW                                                                                                     |
| Wifi      | JamBer WLAN Stick, USB WiFi Adapter Dual-Band 1200 Mbit/s(5GHz+2.4GHz) WLAN Dongle, 5dBi WLAN Antenna/WLAN Adapter | https://www.amazon.de/gp/product/B07XCJF9LZ/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1 driver: http://driver.cinfast.xyz/RTL_Driver_V1.3.zip or https://bit.ly/2tsbuS7 |

## Planned parts

| Component | Specific component                                                                                                 | URL                                                                                                                    |
| --------- | ------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------- |
| Mainboard | Gigabyte Z390 Gaming X                                                                                             | https://www.gigabyte.com/de/Motherboard/Z390-GAMING-X-rev-10#kf                                                        |
| Processor | Intel Core i5-9600K 4,60 GHz                                                                                       | https://ark.intel.com/content/www/de/de/ark/products/134896/intel-core-i5-9600k-processor-9m-cache-up-to-4-60-ghz.html |
| RAM       | VENGEANCE® LPX Speicherkit 32 GB (2 x 16 GB) DDR4 DRAM 3000 MHz C16 – Schwarz                                      | https://www.corsair.com/de/de/Kategorien/Produkte/Arbeitsspeicher/VENGEANCE-LPX/p/CMK32GX4M2A2400C14                   |
| Graphic   | Sapphire RX 5500 XT Pulse 8G                                                                                       | https://https://www.sapphiretech.com/en/consumer/pulse-radeon-rx-5500-xt-8g-gddr6                                      |
| PMU       | beQuiet! PurePower 430 W                                                                                           | https://www.amazon.de/quiet-Pure-Power-L8-CM-430W-Netzteil/dp/B005JRGVAW                                               |  |
| Wifi      | Broadcom BCM94360CD 1300Mbps Dual Band 2,4G/5G 802.11AC Desktop PCI-E Wireless Karte PC Wifi Adapter Bluetooth 4,0 | https://www.aliexpress.com/item/32487754245.html?spm=a2g0s.9042311.0.0.521b4c4drENbH6                                  |

## How to install

Follow [this guide](https://www.tonymacx86.com/threads/how-to-create-a-macos-catalina-public-beta-installation-usb.278188/) for catalina usb stick creation and follow [this guide](https://www.tonymacx86.com/threads/unibeast-install-macos-mojave-on-any-supported-intel-based-pc.259381/)

## Post install

1. Configure SMBIOS with [this guide](https://www.tonymacx86.com/threads/guide-how-to-configure-your-systems-smbios-correctly.198155/). Use a mac which cpu matches best your installed cpu.
2. Configure SSDT for CPU Power Management with [this guide](https://www.tonymacx86.com/threads/quick-guide-to-generate-a-ssdt-for-cpu-power-management.177456/).
3. Configure messages with [this guide](https://www.tonymacx86.com/threads/an-idiots-guide-to-imessage.196827/)

## Terminal

The install.sh installs many development tools as well as a pre configured iterm2 terminal.
After installation your terminal will look like this:
![](iterm2.png)
