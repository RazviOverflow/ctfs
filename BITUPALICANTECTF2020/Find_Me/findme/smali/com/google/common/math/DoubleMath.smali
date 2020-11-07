.class public final Lcom/google/common/math/DoubleMath;
.super Ljava/lang/Object;
.source "DoubleMath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/DoubleMath$MeanAccumulator;
    }
.end annotation


# static fields
.field private static final LN_2:D

.field static final MAX_FACTORIAL:I = 0xaa

.field private static final MAX_INT_AS_DOUBLE:D = 2.147483647E9

.field private static final MAX_LONG_AS_DOUBLE_PLUS_ONE:D = 9.223372036854776E18

.field private static final MIN_INT_AS_DOUBLE:D = -2.147483648E9

.field private static final MIN_LONG_AS_DOUBLE:D = -9.223372036854776E18

.field static final everySixteenthFactorial:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 211
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    .line 302
    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x42b3077775800000L    # 2.0922789888E13
        0x474956ad0aae33a4L    # 2.631308369336935E35
        0x4c9ee69a78d72cb6L    # 1.2413915592536073E61
        0x526fe478ee34844aL    # 1.2688693218588417E89
        0x589c619094edabffL    # 7.156945704626381E118
        0x5f13638dd7bd6347L    # 9.916779348709496E149
        0x65c7cac197cfe503L    # 1.974506857221074E182
        0x6cb1e5dfc140e1e5L    # 3.856204823625804E215
        0x73c8ce85fadb707eL    # 5.5502938327393044E249
        0x7b095d5f3d928edeL    # 4.7147236359920616E284
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factorial(I)D
    .locals 5
    .param p0, "n"    # I

    .line 284
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 285
    const/16 v0, 0xaa

    if-le p0, v0, :cond_0

    .line 286
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 290
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 291
    .local v0, "accum":D
    and-int/lit8 v2, p0, -0x10

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p0, :cond_1

    .line 292
    int-to-double v3, v2

    mul-double/2addr v0, v3

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    shr-int/lit8 v3, p0, 0x4

    aget-wide v3, v2, v3

    mul-double/2addr v3, v0

    return-wide v3
.end method

.method public static fuzzyCompare(DDD)I
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "tolerance"    # D

    .line 364
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/DoubleMath;->fuzzyEquals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x0

    return v0

    .line 366
    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    .line 367
    const/4 v0, -0x1

    return v0

    .line 368
    :cond_1
    cmpl-double v0, p0, p2

    if-lez v0, :cond_2

    .line 369
    const/4 v0, 0x1

    return v0

    .line 371
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v0

    return v0
.end method

.method public static fuzzyEquals(DDD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "tolerance"    # D

    .line 341
    const-string v0, "tolerance"

    invoke-static {v0, p4, p5}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;D)D

    .line 342
    sub-double v0, p0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-lez v0, :cond_1

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMathematicalInteger(D)Z
    .locals 2
    .param p0, "x"    # D

    .line 269
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x34

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPowerOfTwo(D)Z
    .locals 2
    .param p0, "x"    # D

    .line 189
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static log2(D)D
    .locals 4
    .param p0, "x"    # D

    .line 208
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/google/common/math/DoubleMath;->LN_2:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static log2(DLjava/math/RoundingMode;)I
    .locals 11
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 224
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "x must be positive and finite"

    invoke-static {v2, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 225
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v2

    .line 226
    .local v2, "exponent":I
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isNormal(D)Z

    move-result v5

    if-nez v5, :cond_1

    .line 227
    const-wide/high16 v0, 0x4330000000000000L    # 4.503599627370496E15

    mul-double/2addr v0, p0

    invoke-static {v0, v1, p2}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v0

    add-int/lit8 v0, v0, -0x34

    return v0

    .line 232
    :cond_1
    sget-object v5, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 257
    .local v0, "xScaled":D
    .local v3, "increment":Z
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 232
    .end local v0    # "xScaled":D
    .end local v3    # "increment":Z
    :pswitch_0
    move v0, v3

    .line 251
    .local v0, "increment":Z
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->scaleNormalize(D)D

    move-result-wide v5

    .line 254
    .local v5, "xScaled":D
    mul-double v7, v5, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    cmpl-double v1, v7, v9

    if-lez v1, :cond_2

    move v3, v4

    :cond_2
    move v0, v3

    .line 255
    goto :goto_1

    .line 232
    .end local v0    # "increment":Z
    .end local v5    # "xScaled":D
    :pswitch_1
    move v0, v3

    .line 246
    .restart local v0    # "increment":Z
    if-ltz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v1

    xor-int/2addr v1, v4

    and-int v0, v3, v1

    .line 247
    goto :goto_1

    .line 232
    .end local v0    # "increment":Z
    :pswitch_2
    move v0, v3

    .line 243
    .restart local v0    # "increment":Z
    if-gez v2, :cond_4

    move v3, v4

    :cond_4
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v1

    xor-int/2addr v1, v4

    and-int v0, v3, v1

    .line 244
    goto :goto_1

    .line 232
    .end local v0    # "increment":Z
    :pswitch_3
    move v0, v3

    .line 240
    .restart local v0    # "increment":Z
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v1

    xor-int/2addr v1, v4

    move v0, v1

    .line 241
    goto :goto_1

    .line 234
    .end local v0    # "increment":Z
    :pswitch_4
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 237
    :pswitch_5
    const/4 v0, 0x0

    .line 238
    .restart local v0    # "increment":Z
    nop

    .line 259
    :goto_1
    if-eqz v0, :cond_5

    add-int/lit8 v1, v2, 0x1

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static mean(Ljava/lang/Iterable;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .line 436
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    .line 437
    .local v0, "accumulator":Lcom/google/common/math/DoubleMath$MeanAccumulator;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 438
    .local v2, "value":Ljava/lang/Number;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    .line 439
    .end local v2    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 440
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v1

    return-wide v1
.end method

.method public static mean(Ljava/util/Iterator;)D
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .line 449
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    .line 450
    .local v0, "accumulator":Lcom/google/common/math/DoubleMath$MeanAccumulator;
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v1

    return-wide v1
.end method

.method public static varargs mean([D)D
    .locals 6
    .param p0, "values"    # [D

    .line 398
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    .line 399
    .local v0, "accumulator":Lcom/google/common/math/DoubleMath$MeanAccumulator;
    move-object v1, p0

    .local v1, "arr$":[D
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    .line 400
    .local v4, "value":D
    invoke-virtual {v0, v4, v5}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    .line 399
    .end local v4    # "value":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "arr$":[D
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v1

    return-wide v1
.end method

.method public static varargs mean([I)D
    .locals 7
    .param p0, "values"    # [I

    .line 410
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    .line 411
    .local v0, "accumulator":Lcom/google/common/math/DoubleMath$MeanAccumulator;
    move-object v1, p0

    .local v1, "arr$":[I
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 412
    .local v4, "value":I
    int-to-double v5, v4

    invoke-virtual {v0, v5, v6}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    .line 411
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v1

    return-wide v1
.end method

.method public static varargs mean([J)D
    .locals 8
    .param p0, "values"    # [J

    .line 423
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    .line 424
    .local v0, "accumulator":Lcom/google/common/math/DoubleMath$MeanAccumulator;
    move-object v1, p0

    .local v1, "arr$":[J
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    .line 425
    .local v4, "value":J
    long-to-double v6, v4

    invoke-virtual {v0, v6, v7}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    .line 424
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    .end local v1    # "arr$":[J
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v1

    return-wide v1
.end method

.method static roundIntermediate(DLjava/math/RoundingMode;)D
    .locals 7
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 54
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 57
    sget-object v0, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    packed-switch v0, :pswitch_data_0

    .line 108
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :pswitch_0
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 100
    .local v0, "z":D
    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-nez v2, :cond_0

    .line 101
    return-wide p0

    .line 103
    :cond_0
    return-wide v0

    .line 90
    .end local v0    # "z":D
    :pswitch_1
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 91
    .restart local v0    # "z":D
    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-nez v2, :cond_1

    .line 92
    invoke-static {v5, v6, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    add-double/2addr v2, p0

    return-wide v2

    .line 94
    :cond_1
    return-wide v0

    .line 87
    .end local v0    # "z":D
    :pswitch_2
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    return-wide v0

    .line 80
    :pswitch_3
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    return-wide p0

    .line 83
    :cond_2
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    add-double/2addr v0, p0

    return-wide v0

    .line 77
    :pswitch_4
    return-wide p0

    .line 70
    :pswitch_5
    cmpg-double v0, p0, v1

    if-lez v0, :cond_4

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 73
    :cond_3
    add-double/2addr v3, p0

    return-wide v3

    .line 71
    :cond_4
    :goto_0
    return-wide p0

    .line 63
    :pswitch_6
    cmpl-double v0, p0, v1

    if-gez v0, :cond_6

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 66
    :cond_5
    sub-double v0, p0, v3

    return-wide v0

    .line 64
    :cond_6
    :goto_1
    return-wide p0

    .line 59
    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 60
    return-wide p0

    .line 55
    :cond_7
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "input is infinite or NaN"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 174
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide p0

    .line 175
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v3, p0, v3

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 176
    double-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 178
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 179
    .local v0, "exponent":I
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v1

    .line 180
    .local v1, "significand":J
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 v4, v0, -0x34

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 181
    .local v3, "result":Ljava/math/BigInteger;
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_3

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    return-object v4
.end method

.method public static roundToInt(DLjava/math/RoundingMode;)I
    .locals 7
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 127
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    .line 128
    .local v0, "z":D
    const-wide v2, -0x3e1fffffffe00000L    # -2.147483649E9

    cmpl-double v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-wide/high16 v5, 0x41e0000000000000L    # 2.147483648E9

    cmpg-double v5, v0, v5

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    and-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    .line 129
    double-to-int v2, v0

    return v2
.end method

.method public static roundToLong(DLjava/math/RoundingMode;)J
    .locals 7
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 150
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    .line 151
    .local v0, "z":D
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-wide/high16 v5, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v5, v0, v5

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    and-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    .line 152
    double-to-long v2, v0

    return-wide v2
.end method
