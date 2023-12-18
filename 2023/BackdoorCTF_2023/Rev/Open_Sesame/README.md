# Challenge
Rev/Open Sesame
Sl4y3r_07
169 solves / 369 points

Whisper the phrase, unveil with 'Open Sesame

Attachment: https://staticbckdr.infoseciitr.in/opensesame.zip

# Solution
The challenge is straightforward.
The downloaded `open_sesame.apk` can be extracted with `7z x open_sesame.apk`. The resulting files contain a file called `classes.dex`. This file can be converted to readable Java with `dex2jar` by calling `d2j-dex2jar classes.dex`. 
Afterwards, the resulting file `classes-dex2jar.jar` can be inspected with tools like `jd-gui`.

The code of the application can be found in `com.example.open_sesame.MainActivity.class`.

To obtain the flag you can reverse the algorithm (`exploit.py`) or simply execute the Java code in any online compiler, modifying it accordingly of course.

Flag: flag{aLiBabA_and_forty_thiEveS}

If you want to test it online, copy and paste the following code in any Java online compiler like https://paiza.io/projects/cwS6pXKwDLFCUXIPzySEFA

```java
import java.util.*;

public class Main {
    private static final int[] valid_password = new int[] { 52, 108, 49, 98, 97, 98, 97 };

 private static String sh4dy(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    for (byte b = 0; b < paramString.length(); b++) {
      char c = paramString.charAt(b);
      if (Character.isDigit(c))
        stringBuilder.append(c); 
    } 
    return stringBuilder.toString();
  }

  private static int[] it4chi(String paramString) {
    int[] arrayOfInt = new int[paramString.length()];
    for (byte b = 0; b < paramString.length(); b++)
      arrayOfInt[b] = paramString.charAt(b); 
    return arrayOfInt;
  }

private static int sl4y3r(String paramString) {
    return Integer.parseInt(paramString) - 1;
  }

  private static boolean n4ut1lus(String paramString) {
    int[] arrayOfInt = it4chi(paramString);
    if (arrayOfInt.length != valid_password.length)
      return false; 
    for (byte b = 0; b < arrayOfInt.length; b++) {
      if (arrayOfInt[b] != valid_password[b])
        return false; 
    } 
    return true;
  }
  
  private static String flag(String paramString1, String paramString2) {
    StringBuilder stringBuilder = new StringBuilder();
    for (byte b = 0; b < paramString2.length(); b++)
      stringBuilder.append((char)(paramString2.charAt(b) ^ paramString1.charAt(b % paramString1.length()))); 
    return stringBuilder.toString();
  }
    
    public static void main(String args[]) {
        String str2 = "4l1baba";
      int i = sl4y3r(sh4dy(str2));
      System.out.println(sh4dy(str2));
      System.out.println(i);
      System.out.println("flag{" + flag(Integer.toString(i), "U|]rURuoU^PoR_FDMo@X]uBUg") + "}");
    }
}
```