You've reached the Obfuscation Station!
Can you decode this PowerShell to find the flag?
Archive password: infected

# Solution

The original powershell command is: 
```ps
(nEW-objECt  SYstem.iO.COMPreSsIon.deFlaTEStREAm( [IO.mEmORYstreAM][coNVERt]::FROMBAse64sTRING( 'UzF19/UJV7BVUErLSUyvNk5NMTM3TU0zMDYxNjSxNDcyNjexTDY2SUu0NDRITDWpVQIA') ,[io.COmPREssioN.coMpreSSioNmODE]::DeCoMpReSS)| %{ nEW-objECt  sYStEm.Io.StREAMrEADeR($_,[TeXT.encodiNG]::AsCii)} |%{ $_.READTOENd()})| & ( $eNV:cOmSPEc[4,15,25]-JOin'')
```

The last part (`& ( $eNV:cOmSPEc[4,15,25]-JOin'')`) is an obfuscated way of obtaining the `iex` cmdlet, which stands for invoke expression. In other words, if the expression is to be invoked, it can also be echoed. 

Simply subtitute the last part with an echo command and you'll get the flag (execute it in a Windows machine)

```ps
(nEW-objECt  SYstem.iO.COMPreSsIon.deFlaTEStREAm( [IO.mEmORYstreAM][coNVERt]::FROMBAse64sTRING( 'UzF19/UJV7BVUErLSUyvNk5NMTM3TU0zMDYxNjSxNDcyNjexTDY2SUu0NDRITDWpVQIA') ,[io.COmPREssioN.coMpreSSioNmODE]::DeCoMpReSS)| %{ nEW-objECt  sYStEm.Io.StREAMrEADeR($_,[TeXT.encodiNG]::AsCii)} |%{ $_.READTOENd()})| echo
$5GMLW = "flag{3ed675ef0343149723749c34fa910ae4}"
```

# Flag flag{3ed675ef0343149723749c34fa910ae4}