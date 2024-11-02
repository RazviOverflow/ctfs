The SOC detected malware on a host, but antivirus already quarantined it... can you still make sense of what it does?

# Solution

If you look for tools to recover or dump quarantined file, you'll probably stumble upon these two:
- Defender-dump https://github.com/knez/defender-dump
- DeXRAY https://www.hexacorn.com/blog/category/software-releases/dexray/

Given the name of the challenge, I'll go with the second one. It is a perl script. I had to fix some dependencies like:

```
cpan Digest::CRC
cpan Crypt::Blowfish
```
After fixing them, you should be able to execute the DeXRAY script like:
```
$ perl DeXRAY.pl x-ray

=================================================================
 dexray v2.34, copyright by Hexacorn.com, 2010-2024
 Trend&Kaspersky decryption based on code by Optiv
 McAfee BUP decryption code by Brian Maloney
 Much better Symantec VBN support code by Brian Maloney
 Kaspersky System Watcher decryption by Luis Rocha&Antonio Monaca
 Sentinel One decryption research by MrAdz350
 Microsoft AV/Security Essentials by Corey Forman /fetchered/
 Cisco AMP research by @r0ns3n
 Thx to Brian Baskin, James Habben, Brian Maloney, Luis Rocha,
 Antonio Monaca, MrAdz350, Corey Forman /fetchered/, @r0ns3n
 Tony, Jordan Meurer, Oskar, RevD17, Roman D.
=================================================================
Processing file: 'x-ray'
 -> 'x-ray.00000184_Defender.out' - Defender File
 -> ofs='184' (000000B8)

$ file x-ray.00000184_Defender.out 
x-ray.00000184_Defender.out: PE32 executable (DLL) (console) Intel 80386 Mono/.Net assembly, for MS Windows, 3 sections

$ md5sum x-ray.00000184_Defender.out 
488871cdf97f74d4ffe5c9be0a5cf193  x-ray.00000184_Defender.out
```

Nothing relevant in the analyses from ANY.RUN. The output of `file` command says it is a .NET executable. There are several .NET disassemblers, you can try ILSpy or dnSpy. I used dnSpy this time.

Using dnSpy (or any other disassembler) it should be fairly simple to understand what it does. 

The `Main` function looks like:
```c
// stagetwo.StageTwo
// Token: 0x0600002D RID: 45 RVA: 0x00003318 File Offset: 0x00001518
public static void Main(string[] args)
{
	new StageTwo().main("", new StreamReader(Console.OpenStandardInput()));
	byte[] data = StageTwo.load("15b279d8c0fdbd7d4a8eea255876a0fd189f4fafd4f4124dafae47cb20a447308e3f77995d3c");
	byte[] key = StageTwo.load("73de18bfbb99db4f7cbed3156d40959e7aac7d96b29071759c9b70fb18947000be5d41ab6c41");
	byte[] bytes = StageTwo.otp(data, key);
	Encoding.UTF8.GetString(bytes);
}
```
It declares the `data` and `key` variables, which are passed to the `otp` function. This function looks like:
```c
// stagetwo.StageTwo
// Token: 0x0600002B RID: 43 RVA: 0x000032A4 File Offset: 0x000014A4
private static byte[] otp(byte[] data, byte[] key)
{
	byte[] array = new byte[data.Length];
	for (int i = 0; i < data.Length; i++)
	{
		array[i] = (data[i] ^ key[i % key.Length]);
	}
	return array;
}
```
It takes the two strings, and XORes them. Notice it perform byte-wise operations. Replicating this behavior in python is easy. The script [script.py](./script.py) does just that and solves the challenge.

# Flag flag{df26090565cb329fdc8357080700b621}