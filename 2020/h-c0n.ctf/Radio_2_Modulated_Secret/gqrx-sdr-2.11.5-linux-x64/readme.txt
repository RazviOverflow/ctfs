
This is Gqrx v2.11.5 built for 64 bit linux.

This packages include the required GNU Radio and device driver libraries
that are not commonly available on linux distributions. However, it does
not include the Qt5 librariess, and you will have to install these
through thepackage package manager.

Following Qt5 components are needed: Core, Gui, Widgets, Network, Svg.

In order to enble user access to USB devices like rtlsdr, Airspy, SDRPlay,
Funcube Dongle or HackRF you need to copy the apropriate udev rule from
the udev/ subdirectory to /etc/udev/rules.d/ and then power cycle your
SDR.

The bundle includes SoapySDR 0.6 but no plugins. Build your plugins and
then use the SOAPY_SDR_ROOT environment variable to tell SoapySDR where to
look for them.

Please go to http://gqrx.dk/user-support if you need assistance, but make
sure you seach the archive before you post your question.
