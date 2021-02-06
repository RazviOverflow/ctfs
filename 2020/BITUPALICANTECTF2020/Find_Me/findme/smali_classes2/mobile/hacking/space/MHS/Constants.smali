.class Lmobile/hacking/space/MHS/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final knownDangerousAppsPackages:[Ljava/lang/String;

.field public static final knownRootAppsPackages:[Ljava/lang/String;

.field public static final knownRootCloakingPackages:[Ljava/lang/String;

.field public static final pathsThatShouldNotBeWrtiable:[Ljava/lang/String;

.field public static final suPaths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 4
    const-string v0, "com.noshufou.android.su"

    const-string v1, "com.noshufou.android.su.elite"

    const-string v2, "eu.chainfire.supersu"

    const-string v3, "com.koushikdutta.superuser"

    const-string v4, "com.thirdparty.superuser"

    const-string v5, "com.yellowes.su"

    const-string v6, "com.zachspong.temprootremovejb"

    const-string v7, "com.ramdroid.appquarantine"

    const-string v8, "eu.chainfire.supersu"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobile/hacking/space/MHS/Constants;->knownRootAppsPackages:[Ljava/lang/String;

    .line 17
    const-string v1, "com.koushikdutta.rommanager"

    const-string v2, "com.koushikdutta.rommanager.license"

    const-string v3, "com.dimonvideo.luckypatcher"

    const-string v4, "com.chelpus.lackypatch"

    const-string v5, "com.ramdroid.appquarantine"

    const-string v6, "com.ramdroid.appquarantinepro"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobile/hacking/space/MHS/Constants;->knownDangerousAppsPackages:[Ljava/lang/String;

    .line 26
    const-string v1, "com.devadvance.rootcloak"

    const-string v2, "com.devadvance.rootcloakplus"

    const-string v3, "de.robv.android.xposed.installer"

    const-string v4, "com.saurik.substrate"

    const-string v5, "com.zachspong.temprootremovejb"

    const-string v6, "com.amphoras.hidemyroot"

    const-string v7, "com.amphoras.hidemyrootadfree"

    const-string v8, "com.formyhm.hiderootPremium"

    const-string v9, "com.formyhm.hideroot"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobile/hacking/space/MHS/Constants;->knownRootCloakingPackages:[Ljava/lang/String;

    .line 38
    const-string v1, "/data/local/"

    const-string v2, "/data/local/bin/"

    const-string v3, "/data/local/xbin/"

    const-string v4, "/sbin/"

    const-string v5, "/su/bin/"

    const-string v6, "/system/bin/"

    const-string v7, "/system/bin/.ext/"

    const-string v8, "/system/bin/failsafe/"

    const-string v9, "/system/sd/xbin/"

    const-string v10, "/system/usr/we-need-root/"

    const-string v11, "/system/xbin/"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobile/hacking/space/MHS/Constants;->suPaths:[Ljava/lang/String;

    .line 53
    const-string v1, "/system"

    const-string v2, "/system/bin"

    const-string v3, "/system/sbin"

    const-string v4, "/system/xbin"

    const-string v5, "/vendor/bin"

    const-string v6, "/sbin"

    const-string v7, "/etc"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobile/hacking/space/MHS/Constants;->pathsThatShouldNotBeWrtiable:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
