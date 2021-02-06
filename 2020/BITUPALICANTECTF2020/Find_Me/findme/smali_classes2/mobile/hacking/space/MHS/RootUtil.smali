.class public Lmobile/hacking/space/MHS/RootUtil;
.super Ljava/lang/Object;
.source "RootUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForBinary(Ljava/lang/String;)Z
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;

    .line 103
    sget-object v0, Lmobile/hacking/space/MHS/Constants;->suPaths:[Ljava/lang/String;

    .line 105
    .local v0, "pathsArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 107
    .local v1, "result":Z
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 108
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "completePath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    .line 111
    .local v7, "fileExists":Z
    if-eqz v7, :cond_0

    .line 112
    const/4 v1, 0x1

    .line 107
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "completePath":Ljava/lang/String;
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "fileExists":Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_1
    return v1
.end method

.method public static checkForBusyBoxBinary()Z
    .locals 1

    .line 98
    const-string v0, "busybox"

    invoke-static {v0}, Lmobile/hacking/space/MHS/RootUtil;->checkForBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkForDangerousProps()Z
    .locals 11

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v0, "dangerousProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ro.debuggable"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "ro.secure"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const/4 v1, 0x0

    .line 183
    .local v1, "result":Z
    invoke-static {}, Lmobile/hacking/space/MHS/RootUtil;->propsReader()[Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "lines":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 185
    .local v5, "line":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 186
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 187
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 188
    .local v8, "badValue":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 189
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 190
    const/4 v1, 0x1

    .line 193
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "badValue":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 184
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    :cond_2
    return v1
.end method

.method public static checkForRWPaths()Z
    .locals 17

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "result":Z
    invoke-static {}, Lmobile/hacking/space/MHS/RootUtil;->mountReader()[Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "lines":[Ljava/lang/String;
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    .line 204
    .local v5, "line":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, "args":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x4

    if-ge v7, v8, :cond_0

    .line 207
    goto :goto_5

    .line 210
    :cond_0
    const/4 v7, 0x1

    aget-object v7, v6, v7

    .line 211
    .local v7, "mountPoint":Ljava/lang/String;
    const/4 v8, 0x3

    aget-object v8, v6, v8

    .line 213
    .local v8, "mountOptions":Ljava/lang/String;
    sget-object v9, Lmobile/hacking/space/MHS/Constants;->pathsThatShouldNotBeWrtiable:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v12, v9, v11

    .line 214
    .local v12, "pathToCheck":Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 215
    const-string v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_2

    aget-object v3, v13, v15

    .line 217
    .local v3, "option":Ljava/lang/String;
    move/from16 v16, v0

    .end local v0    # "result":Z
    .local v16, "result":Z
    const-string v0, "rw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    const/4 v0, 0x1

    .line 219
    .end local v16    # "result":Z
    .restart local v0    # "result":Z
    goto :goto_4

    .line 215
    .end local v0    # "result":Z
    .end local v3    # "option":Ljava/lang/String;
    .restart local v16    # "result":Z
    :cond_1
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v16

    goto :goto_2

    .end local v16    # "result":Z
    .restart local v0    # "result":Z
    :cond_2
    move/from16 v16, v0

    .end local v0    # "result":Z
    .restart local v16    # "result":Z
    goto :goto_3

    .line 214
    .end local v16    # "result":Z
    .restart local v0    # "result":Z
    :cond_3
    move/from16 v16, v0

    .line 213
    .end local v0    # "result":Z
    .end local v12    # "pathToCheck":Ljava/lang/String;
    .restart local v16    # "result":Z
    :goto_3
    move/from16 v0, v16

    .end local v16    # "result":Z
    .restart local v0    # "result":Z
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    move/from16 v16, v0

    .line 203
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "args":[Ljava/lang/String;
    .end local v7    # "mountPoint":Ljava/lang/String;
    .end local v8    # "mountOptions":Ljava/lang/String;
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    :cond_5
    return v0
.end method

.method public static checkForSuBinary()Z
    .locals 1

    .line 93
    const-string v0, "su"

    invoke-static {v0}, Lmobile/hacking/space/MHS/RootUtil;->checkForBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkSuExists()Z
    .locals 5

    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, "process":Ljava/lang/Process;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "which"

    const-string v4, "su"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    move-object v0, v2

    .line 233
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 234
    .local v2, "in":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 238
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 234
    :cond_1
    return v1

    .line 235
    .end local v2    # "in":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    .line 236
    .local v2, "t":Ljava/lang/Throwable;
    nop

    .line 238
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 236
    :cond_2
    return v1
.end method

.method public static detectPotentiallyDangerousApps(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lmobile/hacking/space/MHS/RootUtil;->detectPotentiallyDangerousApps([Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static detectPotentiallyDangerousApps([Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p0, "additionalDangerousApps"    # [Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lmobile/hacking/space/MHS/Constants;->knownDangerousAppsPackages:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 66
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    :cond_0
    invoke-static {v0, p1}, Lmobile/hacking/space/MHS/RootUtil;->isAnyPackageFromListInstalled(Ljava/util/List;Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public static detectRootManagementApps(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lmobile/hacking/space/MHS/RootUtil;->detectRootManagementApps([Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static detectRootManagementApps([Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p0, "additionalRootManagementApps"    # [Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lmobile/hacking/space/MHS/Constants;->knownRootAppsPackages:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 49
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    :cond_0
    invoke-static {v0, p1}, Lmobile/hacking/space/MHS/RootUtil;->isAnyPackageFromListInstalled(Ljava/util/List;Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public static detectTestKeys()Z
    .locals 6

    .line 29
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 30
    .local v0, "buildTags":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 31
    .local v1, "buildFinger":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 32
    .local v2, "product":Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 33
    .local v3, "hardware":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 34
    .local v4, "display":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v5, "test-keys"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "genric.*test-keys"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "generic"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "sdk"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "goldfish"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ".*test-keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method private static isAnyPackageFromListInstalled(Ljava/util/List;Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .line 159
    .local p0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 161
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 163
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 165
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    const/4 v0, 0x1

    .line 169
    goto :goto_1

    .line 167
    :catch_0
    move-exception v4

    .line 170
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 172
    :cond_0
    return v0
.end method

.method public static isDeviceRooted(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    invoke-static {p0}, Lmobile/hacking/space/MHS/RootUtil;->detectRootManagementApps(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lmobile/hacking/space/MHS/RootUtil;->detectPotentiallyDangerousApps(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "su"

    invoke-static {v0}, Lmobile/hacking/space/MHS/RootUtil;->checkForBinary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    const-string v0, "busybox"

    invoke-static {v0}, Lmobile/hacking/space/MHS/RootUtil;->checkForBinary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmobile/hacking/space/MHS/RootUtil;->checkForDangerousProps()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmobile/hacking/space/MHS/RootUtil;->checkForRWPaths()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    invoke-static {}, Lmobile/hacking/space/MHS/RootUtil;->detectTestKeys()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmobile/hacking/space/MHS/RootUtil;->checkSuExists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method

.method private static mountReader()[Ljava/lang/String;
    .locals 4

    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, "inputstream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "mount"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 146
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 148
    :cond_0
    const-string v1, ""

    .line 150
    .local v1, "propval":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v3, "\\A"

    invoke-virtual {v2, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 153
    goto :goto_1

    .line 151
    :catch_1
    move-exception v2

    .line 152
    .local v2, "e":Ljava/util/NoSuchElementException;
    invoke-virtual {v2}, Ljava/util/NoSuchElementException;->printStackTrace()V

    .line 155
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :goto_1
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static propsReader()[Ljava/lang/String;
    .locals 4

    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "inputstream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "getprop"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    const-string v1, ""

    .line 128
    .local v1, "propval":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v3, "\\A"

    invoke-virtual {v2, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 132
    goto :goto_1

    .line 130
    :catch_1
    move-exception v2

    .line 134
    :goto_1
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public detectRootCloakingApps(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmobile/hacking/space/MHS/RootUtil;->detectRootCloakingApps([Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public detectRootCloakingApps([Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p1, "additionalRootCloakingApps"    # [Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lmobile/hacking/space/MHS/Constants;->knownRootCloakingPackages:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 84
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    :cond_0
    invoke-static {v0, p2}, Lmobile/hacking/space/MHS/RootUtil;->isAnyPackageFromListInstalled(Ljava/util/List;Landroid/content/Context;)Z

    move-result v1

    return v1
.end method
