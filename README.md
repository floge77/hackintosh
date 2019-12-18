# My Hackintosh

## Current parts

| Component | Specific component                                                                                                 | URL                                                                                                                                                                       |
| --------- | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Mainboard | Gigabyte Z68X-UD3P-B3                                                                                              | https://www.gigabyte.com/Motherboard/GA-Z68X-UD3P-B3-rev-10#ov                                                                                                            |
| Processor | Intel Core i5-2500 3.30 GHz, Socket 1155                                                                           | https://ark.intel.com/content/www/us/en/ark/products/52209/intel-core-i5-2500-processor-6m-cache-up-to-3-70-ghz.html                                                      |
| RAM       | Corsair XMS3 16 GB DDR3 1600 MHz                                                                                   |                                                                                                                                                                           |
| Graphic   | Sapphire RX 5500 XT Pulse 8G                                                                                       | https://www.caseking.de/sapphire-pulse-radeon-rx-5500-xt-8g-8192-mb-gddr6-gcsp-207.html                                                                                   |
| PMU       | beQuiet! PurePower 430 W                                                                                           | https://www.amazon.de/quiet-Pure-Power-L8-CM-430W-Netzteil/dp/B005JRGVAW                                                                                                  |
| Wifi      | JamBer WLAN Stick, USB WiFi Adapter Dual-Band 1200 Mbit/s(5GHz+2.4GHz) WLAN Dongle, 5dBi WLAN Antenna/WLAN Adapter | https://www.amazon.de/gp/product/B07XCJF9LZ/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1 driver: http://driver.cinfast.xyz/RTL_Driver_V1.3.zip or https://bit.ly/2tsbuS7 |

## Planned parts

| Component | Specific component                                                                                                 | URL                                                                                                |
| --------- | ------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------- |
| Mainboard | Gigabyte Z390                                                                                                      | https://www.amazon.de/gp/product/B07HS4XS93/ref=ox_sc_mini_detail?ie=UTF8&psc=1&smid=AUAVRUONAQ4EG |
| Processor | Intel Core i5-9600K 4,60 GHz                                                                                       | https://www.amazon.de/gp/product/B07HHLX1R8/ref=ox_sc_act_image_2?smid=A27FVGL1U6882E&psc=1        |
| RAM       | Crucial Ballistix Sport LT BLS2K8G4D26BFSB Desktop Gaming Speicher Kit (2666 MHz, DDR4, DRAM, 16GB (8GB x2), CL16) | https://www.amazon.de/dp/B06XJ9LMRQ/?tag=tonymacx8603-21&th=1                                      |
| Graphic   | Sapphire RX 5500 XT Pulse 8G                                                                                       | https://www.caseking.de/sapphire-pulse-radeon-rx-5500-xt-8g-8192-mb-gddr6-gcsp-207.html            |
| PMU       | beQuiet! PurePower 430 W                                                                                           | https://www.amazon.de/quiet-Pure-Power-L8-CM-430W-Netzteil/dp/B005JRGVAW                           |  |
| Wifi      | Broadcom BCM94360CD 1300Mbps Dual Band 2,4G/5G 802.11AC Desktop PCI-E Wireless Karte PC Wifi Adapter Bluetooth 4,0 | https://www.aliexpress.com/item/32487754245.html?spm=a2g0s.9042311.0.0.521b4c4drENbH6              |

## How to install

Follow [this guide](https://www.tonymacx86.com/threads/how-to-create-a-macos-catalina-public-beta-installation-usb.278188/) for catalina usb stick creation and follow [this guide](https://www.tonymacx86.com/threads/unibeast-install-macos-mojave-on-any-supported-intel-based-pc.259381/)

## Post install

1. Configure SMBIOS with [this guide](https://www.tonymacx86.com/threads/guide-how-to-configure-your-systems-smbios-correctly.198155/). Use a mac which cpu matches best your installed cpu.
2. Configure SSDT for CPU Power Management with [this guide](https://www.tonymacx86.com/threads/quick-guide-to-generate-a-ssdt-for-cpu-power-management.177456/).
3. Configure dsdt with ?? Maybe SSDT is enough??
4. Configure messages with [this guide](https://www.tonymacx86.com/threads/an-idiots-guide-to-imessage.196827/)
