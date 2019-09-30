# O365install Script
Script to download/update/install Office 365 to and from an offline source.

## Office Deployment Tool
This script uses setup.exe from the [Office Deployment Tool](https://docs.microsoft.com/en-us/deployoffice/overview-of-the-office-2016-deployment-tool). You may [download it for yourself](https://www.microsoft.com/en-us/download/details.aspx?id=49117) if you don't trust the one included here.

## Configuration.xml
I've included a boilerplate configuration.xml that should work fine in most business environments. If you need 32-bit, change `OfficeClientEdition` from `64` to `32`.

## Network/Samba
Do not execute this script from a network drive or samba share.

## Create offline media
Run `install.bat` from a local disk or external drive. Choose option 1 to download. It will create a subfolder with an offline installer for Office 365. Use this same process to update.

## Install from offline media
Run `install.bat` and choose option 2. It will install using the offline files that you downloaded in the previous step. Since it won't work across a network drive, either copy the entire o365install folder to the local computer or run `install.bat` from a USB drive.
