## print-scan 
**Type: StandaloneVM**

**Template: debian-12-xfce**

**Networking: sys-firewall**

-----

A VM designated for printing and scanning, so that we can effectively cordon the printer away from the other VMs.

You can adjust something like the `print_scan_setup.sh` script [here](https://github.com/RooneyMcNibNug/QubesOS-env/blob/main/print-scan/print_scan_setup.sh) to download and install the necessary drivers for your printer in particular on the AppVM, once you have the links.

A few notes on usage here:

- No other additional applications besides the dprinter drivers and software
- I did this based on the Debain template, but I think a StandloneVM running based off of Fedora would work just as well for most printers 
- This relies heavliy on copying over any scanned files to other Qubes for editing, sharing, etc.
- The scanning application was not registered as an Application to add to the start menu for this app, but it is simple enough to run via terminal (see last line of the script mentioned above)
