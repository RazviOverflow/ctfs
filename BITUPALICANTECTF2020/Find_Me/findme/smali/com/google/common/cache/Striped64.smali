.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/Striped64$ThreadHashCode;,
        Lcom/google/common/cache/Striped64$HashCode;,
        Lcom/google/common/cache/Striped64$Cell;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final baseOffset:J

.field private static final busyOffset:J

.field static final threadHashCode:Lcom/google/common/cache/Striped64$ThreadHashCode;


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 145
    new-instance v0, Lcom/google/common/cache/Striped64$ThreadHashCode;

    invoke-direct {v0}, Lcom/google/common/cache/Striped64$ThreadHashCode;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Lcom/google/common/cache/Striped64$ThreadHashCode;

    .line 148
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/common/cache/Striped64;->NCPU:I

    .line 306
    :try_start_0
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    .line 307
    const-class v1, Lcom/google/common/cache/Striped64;

    .line 308
    .local v1, "sk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "base"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    .line 310
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "busy"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v1    # "sk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 315
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 170
    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .locals 1

    .line 21
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 4

    .line 326
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 327
    :catch_0
    move-exception v0

    .line 329
    :try_start_1
    new-instance v0, Lcom/google/common/cache/Striped64$1;

    invoke-direct {v0}, Lcom/google/common/cache/Striped64$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 341
    :catch_1
    move-exception v0

    .line 342
    .local v0, "e":Ljava/security/PrivilegedActionException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "Could not initialize intrinsics"

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final casBase(JJ)Z
    .locals 8
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    .line 176
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final casBusy()Z
    .locals 6

    .line 183
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final internalReset(J)V
    .locals 4
    .param p1, "initialValue"    # J

    .line 288
    iget-object v0, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 289
    .local v0, "as":[Lcom/google/common/cache/Striped64$Cell;
    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    .line 290
    if-eqz v0, :cond_1

    .line 291
    array-length v1, v0

    .line 292
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 293
    aget-object v3, v0, v2

    .line 294
    .local v3, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v3, :cond_0

    .line 295
    iput-wide p1, v3, Lcom/google/common/cache/Striped64$Cell;->value:J

    .line 292
    .end local v3    # "a":Lcom/google/common/cache/Striped64$Cell;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method final retryUpdate(JLcom/google/common/cache/Striped64$HashCode;Z)V
    .locals 17
    .param p1, "x"    # J
    .param p3, "hc"    # Lcom/google/common/cache/Striped64$HashCode;
    .param p4, "wasUncontended"    # Z

    .line 209
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    iget v0, v4, Lcom/google/common/cache/Striped64$HashCode;->code:I

    .line 210
    .local v0, "h":I
    const/4 v5, 0x0

    move v6, v0

    move v7, v5

    move/from16 v5, p4

    .line 213
    .end local v0    # "h":I
    .end local p4    # "wasUncontended":Z
    .local v5, "wasUncontended":Z
    .local v6, "h":I
    .local v7, "collide":Z
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object v8, v0

    .local v8, "as":[Lcom/google/common/cache/Striped64$Cell;
    const/4 v9, 0x0

    if-eqz v0, :cond_d

    array-length v0, v8

    move v10, v0

    .local v10, "n":I
    if-lez v0, :cond_c

    .line 214
    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v6

    aget-object v0, v8, v0

    move-object v11, v0

    .local v11, "a":Lcom/google/common/cache/Striped64$Cell;
    if-nez v0, :cond_3

    .line 215
    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_2

    .line 216
    new-instance v0, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v0, v2, v3}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    move-object v12, v0

    .line 217
    .local v12, "r":Lcom/google/common/cache/Striped64$Cell;
    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    const/4 v13, 0x0

    .line 221
    .local v13, "created":Z
    :try_start_0
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object v14, v0

    .local v14, "rs":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_1

    array-length v0, v14

    move v15, v0

    .local v15, "m":I
    if-lez v0, :cond_1

    add-int/lit8 v0, v15, -0x1

    and-int/2addr v0, v6

    move/from16 v16, v0

    .local v16, "j":I
    aget-object v0, v14, v0

    if-nez v0, :cond_1

    .line 224
    aput-object v12, v14, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    const/4 v13, 0x1

    .line 228
    .end local v14    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    .end local v15    # "m":I
    .end local v16    # "j":I
    :cond_1
    iput v9, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 229
    nop

    .line 230
    if-eqz v13, :cond_0

    .line 231
    goto/16 :goto_4

    .line 228
    :catchall_0
    move-exception v0

    iput v9, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    .line 235
    .end local v12    # "r":Lcom/google/common/cache/Striped64$Cell;
    .end local v13    # "created":Z
    :cond_2
    const/4 v7, 0x0

    move v9, v10

    goto :goto_3

    .line 237
    :cond_3
    if-nez v5, :cond_4

    .line 238
    const/4 v5, 0x1

    move v9, v10

    goto :goto_3

    .line 239
    :cond_4
    iget-wide v12, v11, Lcom/google/common/cache/Striped64$Cell;->value:J

    move-wide v14, v12

    move/from16 p4, v10

    .end local v10    # "n":I
    .local v14, "v":J
    .local p4, "n":I
    invoke-virtual {v1, v14, v15, v2, v3}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v9

    invoke-virtual {v11, v12, v13, v9, v10}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 240
    goto/16 :goto_4

    .line 241
    :cond_5
    sget v0, Lcom/google/common/cache/Striped64;->NCPU:I

    move/from16 v9, p4

    .end local p4    # "n":I
    .local v9, "n":I
    if-ge v9, v0, :cond_a

    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eq v0, v8, :cond_6

    goto :goto_2

    .line 243
    :cond_6
    if-nez v7, :cond_7

    .line 244
    const/4 v7, 0x1

    goto :goto_3

    .line 245
    :cond_7
    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 247
    :try_start_1
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v0, v8, :cond_9

    .line 248
    shl-int/lit8 v0, v9, 0x1

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    .line 249
    .local v0, "rs":[Lcom/google/common/cache/Striped64$Cell;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v9, :cond_8

    .line 250
    aget-object v12, v8, v10

    aput-object v12, v0, v10

    .line 249
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 251
    .end local v10    # "i":I
    :cond_8
    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    .end local v0    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_9
    const/4 v10, 0x0

    iput v10, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 255
    nop

    .line 256
    const/4 v7, 0x0

    .line 257
    goto/16 :goto_0

    .line 254
    :catchall_1
    move-exception v0

    const/4 v10, 0x0

    iput v10, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    .line 242
    :cond_a
    :goto_2
    const/4 v7, 0x0

    .line 259
    .end local v14    # "v":J
    :cond_b
    :goto_3
    shl-int/lit8 v0, v6, 0xd

    xor-int/2addr v0, v6

    .line 260
    .end local v6    # "h":I
    .local v0, "h":I
    ushr-int/lit8 v6, v0, 0x11

    xor-int/2addr v0, v6

    .line 261
    shl-int/lit8 v6, v0, 0x5

    xor-int/2addr v0, v6

    move v6, v0

    goto :goto_5

    .line 213
    .end local v0    # "h":I
    .end local v9    # "n":I
    .end local v11    # "a":Lcom/google/common/cache/Striped64$Cell;
    .restart local v6    # "h":I
    .local v10, "n":I
    :cond_c
    move v9, v10

    .line 263
    .end local v10    # "n":I
    :cond_d
    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_10

    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v0, v8, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 264
    const/4 v9, 0x0

    .line 266
    .local v9, "init":Z
    :try_start_2
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v0, v8, :cond_e

    .line 267
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    .line 268
    .local v0, "rs":[Lcom/google/common/cache/Striped64$Cell;
    and-int/lit8 v10, v6, 0x1

    new-instance v11, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v11, v2, v3}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v11, v0, v10

    .line 269
    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 270
    const/4 v9, 0x1

    .line 273
    .end local v0    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_e
    const/4 v10, 0x0

    iput v10, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 274
    nop

    .line 275
    if-eqz v9, :cond_f

    .line 276
    goto :goto_4

    .line 277
    .end local v9    # "init":Z
    :cond_f
    goto :goto_5

    .line 273
    .restart local v9    # "init":Z
    :catchall_2
    move-exception v0

    const/4 v10, 0x0

    iput v10, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    .line 278
    .end local v9    # "init":Z
    :cond_10
    iget-wide v9, v1, Lcom/google/common/cache/Striped64;->base:J

    move-wide v11, v9

    .local v11, "v":J
    invoke-virtual {v1, v11, v12, v2, v3}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v13

    invoke-virtual {v1, v9, v10, v13, v14}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 279
    nop

    .line 281
    .end local v8    # "as":[Lcom/google/common/cache/Striped64$Cell;
    .end local v11    # "v":J
    :goto_4
    iput v6, v4, Lcom/google/common/cache/Striped64$HashCode;->code:I

    .line 282
    return-void

    .line 280
    :cond_11
    :goto_5
    goto/16 :goto_0
.end method
