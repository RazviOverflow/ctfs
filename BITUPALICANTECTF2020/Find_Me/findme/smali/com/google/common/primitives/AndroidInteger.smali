.class final Lcom/google/common/primitives/AndroidInteger;
.super Ljava/lang/Object;
.source "AndroidInteger.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static tryParse(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 34
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/AndroidInteger;->tryParse(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static tryParse(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 42
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "Invalid radix %s, min radix is %s"

    invoke-static {v3, v5, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const/16 v3, 0x24

    if-gt p1, v3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "Invalid radix %s, max radix is %s"

    invoke-static {v4, v3, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "length":I
    const/4 v3, 0x0

    .line 48
    .local v3, "i":I
    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 49
    return-object v4

    .line 51
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3

    move v1, v2

    .line 52
    .local v1, "negative":Z
    :cond_3
    if-eqz v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_4

    .line 53
    return-object v4

    .line 55
    :cond_4
    invoke-static {p0, v3, p1, v1}, Lcom/google/common/primitives/AndroidInteger;->tryParse(Ljava/lang/String;IIZ)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method private static tryParse(Ljava/lang/String;IIZ)Ljava/lang/Integer;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "radix"    # I
    .param p3, "negative"    # Z
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 61
    const/high16 v0, -0x80000000

    div-int v1, v0, p2

    .line 62
    .local v1, "max":I
    const/4 v2, 0x0

    .local v2, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 63
    .local v3, "length":I
    :goto_0
    const/4 v4, 0x0

    if-ge p1, v3, :cond_3

    .line 64
    add-int/lit8 v5, p1, 0x1

    .end local p1    # "offset":I
    .local v5, "offset":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    .line 65
    .local p1, "digit":I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    .line 66
    return-object v4

    .line 68
    :cond_0
    if-le v1, v2, :cond_1

    .line 69
    return-object v4

    .line 71
    :cond_1
    mul-int v6, v2, p2

    sub-int/2addr v6, p1

    .line 72
    .local v6, "next":I
    if-le v6, v2, :cond_2

    .line 73
    return-object v4

    .line 75
    :cond_2
    move v2, v6

    .line 76
    .end local v6    # "next":I
    .end local p1    # "digit":I
    move p1, v5

    goto :goto_0

    .line 77
    .end local v5    # "offset":I
    .local p1, "offset":I
    :cond_3
    if-nez p3, :cond_4

    .line 78
    neg-int v2, v2

    .line 79
    if-gez v2, :cond_4

    .line 80
    return-object v4

    .line 84
    :cond_4
    const v5, 0x7fffffff

    if-gt v2, v5, :cond_6

    if-ge v2, v0, :cond_5

    goto :goto_1

    .line 87
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 85
    :cond_6
    :goto_1
    return-object v4
.end method
