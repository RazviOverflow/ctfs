Our IT department was setting up a new workstation and started encountering some strange errors while installing software.
The technician noticed a strange scheduled task and luckily backed it up and grabbed some log files before wiping the machine!
Can you figure out what's going on?
We've included the exported scheduled task and log files below.
The archive password is infected-palimpsest.

# Solution
There are several steps to perform. I may write a detailed writeup in the future. To sum up:
It resolves DNS for some pyrchdata entry to get the powershell that generates the flag.
The powershell gets events 40k to 65k (those that exist within that EventID range) and exctracts their ata. Assembles it in ascending order and writes it to flag.mp4.

I tried fixing the powershell script but didnt manage to make it work, so I used other tools (like `evtxextract`) to exctract the data and assemble the flag myself. The powershell a typo in `msiinstaller`. Probably more errors.

I included the reassembled flag file `70551f9ba5c82980cececac541310ba6  flag.mp4`.

# Flag flag{2b7dff19886372f1z85ca267eb15zabe}