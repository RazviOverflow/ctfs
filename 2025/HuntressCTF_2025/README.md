# Huntress CTF 2025 (Malware Challenges)
A walkthrough video solving all malware challenges from Huntress CTF 2025. Namely, Verify You Are Human, Spaghetti, For Greatness, Sandy, NetSupport, Lizard, My Hawaii Vacation, Telestealer (original binary, before swap). We will do so by using mostly online and free tools such as ANY.run, TIO.run and Cyberchef (and also some reversing skills). From social-engineering PowerShell traps to packed PE samples, obfuscated PHP/C2, and a full .NET dropper, showing how the flags were recovered and why each technique matters.

_(Click on the image to go to the [video on YouTube](https://www.youtube.com/watch?v=xYrpUQj44FU))_  
[![Solving Malware Challenges | Huntress CTF 2025](https://github.com/user-attachments/assets/8fce2cd2-056d-4439-8ab1-e308cb27aa63)
](https://www.youtube.com/watch?v=xYrpUQj44FU "Solving Malware Challenges | Huntress CTF 2025")

- 00:37 - **Verify You Are Human**  
  ClickFix social-engineering PowerShell → nested scripts → fake PDF zip → output.py decodes a huge base64 payload, custom XOR decryption → shellcode → disassembly reveals the flag.
- 06:00 - **Spaghetti**  
  Obfuscated MZ hexdump + PowerShell; reconstructing the PE (REMCOS) and extracting flags via string inspection and script execution flows.
- 11:36 - **For Greatness**  
  Giant obfuscated PHP; inline gotos and big base64/zlib payloads → end result looks like a C2 website — flag hidden in an email address.
- 15:58 - **Sandy**  
  packed PE containing an AutoIt script in overlay; extract, concatenate base64 fragments → PowerShell revealed (Invoke-Expression → Write-Host trick) → cleartext flag.
- 19:30 - **NetSupport**  
  massive PowerShell dropper; sandbox traces show creation/download of CLIENTE32.ini which contains the flag.
- 22:16 - **Lizard**  
  no attachments: remote PowerShell via irm + iex; raw inflation + chained scripts across many stages → flag is reconstructed by concatenating variables.
- 28:25 - **My Hawaii Vacation**  
  booking.com-style IP lures; PE that customizes by form input, enumerates C:\Users\, steals SIDs and archives user data (7z) — use sandbox & indexed results to find uploaded .log and .zip, recover SID bytes → decode password → recover desktop and flag.
- 37:16 - **Telestealer (original)**  
  long JS that builds base64 → decodes to PowerShell → AES/base64 chain → dump the embedded PE (don’t execute!) → reverse .NET with dnSpy, find Telegram bot reference → trivial bot question → flag.

## Certificate of participation
https://ctf.huntress.com/completion/180ccc22f65b6d60
<img width="1282" height="993" alt="RazviOverflow_HuntressCTF_Participation" src="https://github.com/user-attachments/assets/36e67c12-9b3f-4493-b9e1-fd756b9417a1" />

