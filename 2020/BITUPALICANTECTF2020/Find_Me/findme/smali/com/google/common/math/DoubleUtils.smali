.class final Lcom/google/common/math/DoubleUtils;
.super Ljava/lang/Object;
.source "DoubleUtils.java"


# static fields
.field static final EXPONENT_BIAS:I = 0x3ff

.field static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field static final IMPLICIT_BIT:J = 0x10000000000000L

.field private static final ONE_BITS:J

.field static final SIGNIFICAND_BITS:I = 0x34

.field static final SIGNIFICAND_MASK:J = 0xfffffffffffffL

.field static final SIGN_MASK:J = -0x8000000000000000L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 147
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleUtils;->ONE_BITS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static bigToDouble(Ljava/math/BigInteger;)D
    .locals 16
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 93
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 94
    .local v0, "absX":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 96
    .local v1, "exponent":I
    const/16 v3, 0x3f

    if-ge v1, v3, :cond_0

    .line 97
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    return-wide v2

    .line 98
    :cond_0
    const/16 v3, 0x3ff

    if-le v1, v3, :cond_1

    .line 99
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    mul-double/2addr v2, v4

    return-wide v2

    .line 110
    :cond_1
    add-int/lit8 v3, v1, -0x34

    sub-int/2addr v3, v2

    .line 111
    .local v3, "shift":I
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    .line 112
    .local v4, "twiceSignifFloor":J
    shr-long v6, v4, v2

    .line 113
    .local v6, "signifFloor":J
    const-wide v8, 0xfffffffffffffL

    and-long/2addr v6, v8

    .line 120
    const-wide/16 v8, 0x1

    and-long v10, v4, v8

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    and-long v10, v6, v8

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    invoke-virtual {v0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v10

    if-ge v10, v3, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 122
    .local v2, "increment":Z
    :goto_0
    if-eqz v2, :cond_4

    add-long/2addr v8, v6

    goto :goto_1

    :cond_4
    move-wide v8, v6

    .line 123
    .local v8, "signifRounded":J
    :goto_1
    add-int/lit16 v10, v1, 0x3ff

    int-to-long v10, v10

    const/16 v12, 0x34

    shl-long/2addr v10, v12

    .line 124
    .local v10, "bits":J
    add-long/2addr v10, v8

    .line 131
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->signum()I

    move-result v12

    int-to-long v12, v12

    const-wide/high16 v14, -0x8000000000000000L

    and-long/2addr v12, v14

    or-long/2addr v10, v12

    .line 132
    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    return-wide v12
.end method

.method static ensureNonNegative(D)D
    .locals 3
    .param p0, "value"    # D

    .line 139
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 140
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    .line 141
    return-wide p0

    .line 143
    :cond_0
    return-wide v0
.end method

.method static getSignificand(D)J
    .locals 5
    .param p0, "d"    # D

    .line 65
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    const-string v1, "not a normal value"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 66
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 67
    .local v0, "exponent":I
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    .line 68
    .local v1, "bits":J
    const-wide v3, 0xfffffffffffffL

    and-long/2addr v1, v3

    .line 69
    const/16 v3, -0x3ff

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    shl-long v3, v1, v3

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x10000000000000L

    or-long/2addr v3, v1

    :goto_0
    return-wide v3
.end method

.method static isFinite(D)Z
    .locals 2
    .param p0, "d"    # D

    .line 75
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    const/16 v1, 0x3ff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isNormal(D)Z
    .locals 2
    .param p0, "d"    # D

    .line 79
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    const/16 v1, -0x3fe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static nextDown(D)D
    .locals 2
    .param p0, "d"    # D

    .line 40
    neg-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method

.method static scaleNormalize(D)D
    .locals 4
    .param p0, "x"    # D

    .line 87
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide v2, 0xfffffffffffffL

    and-long/2addr v0, v2

    .line 88
    .local v0, "significand":J
    sget-wide v2, Lcom/google/common/math/DoubleUtils;->ONE_BITS:J

    or-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method
