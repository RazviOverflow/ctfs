.class final Lcom/google/common/io/BaseEncoding$Alphabet;
.super Lcom/google/common/base/CharMatcher;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Alphabet"
.end annotation


# instance fields
.field final bitsPerChar:I

.field final bytesPerChunk:I

.field private final chars:[C

.field final charsPerChunk:I

.field private final decodabet:[B

.field final mask:I

.field private final name:Ljava/lang/String;

.field private final validPadding:[Z


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "chars"    # [C

    .line 457
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 458
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    .line 459
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 461
    :try_start_0
    array-length v0, p2

    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v0

    iput v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    nop

    .line 470
    invoke-static {v0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 471
    .local v0, "gcd":I
    div-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    .line 472
    iget v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    div-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    .line 474
    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->mask:I

    .line 476
    const/16 v1, 0x80

    new-array v1, v1, [B

    .line 477
    .local v1, "decodabet":[B
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 478
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_1

    .line 479
    aget-char v5, p2, v4

    .line 480
    .local v5, "c":C
    sget-object v6, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v6, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "Non-ASCII character: %s"

    invoke-static {v6, v8, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 481
    aget-byte v6, v1, v5

    if-ne v6, v3, :cond_0

    move v6, v2

    goto :goto_1

    :cond_0
    move v6, v9

    :goto_1
    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v7, v9

    const-string v8, "Duplicate character: %s"

    invoke-static {v6, v8, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 482
    int-to-byte v6, v4

    aput-byte v6, v1, v5

    .line 478
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 484
    .end local v4    # "i":I
    :cond_1
    iput-object v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    .line 486
    iget v3, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    new-array v3, v3, [Z

    .line 487
    .local v3, "validPadding":[Z
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget v5, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    if-ge v4, v5, :cond_2

    .line 488
    mul-int/lit8 v5, v4, 0x8

    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    sget-object v7, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v5, v6, v7}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v5

    aput-boolean v2, v3, v5

    .line 487
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 490
    .end local v4    # "i":I
    :cond_2
    iput-object v3, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->validPadding:[Z

    .line 491
    return-void

    .line 462
    .end local v0    # "gcd":I
    .end local v1    # "decodabet":[B
    .end local v3    # "validPadding":[Z
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/ArithmeticException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal alphabet length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private hasLowerCase()Z
    .locals 5

    .line 509
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .local v0, "arr$":[C
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, v0, v2

    .line 510
    .local v3, "c":C
    invoke-static {v3}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 511
    const/4 v4, 0x1

    return v4

    .line 509
    .end local v3    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    .end local v0    # "arr$":[C
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hasUpperCase()Z
    .locals 5

    .line 518
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .local v0, "arr$":[C
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, v0, v2

    .line 519
    .local v3, "c":C
    invoke-static {v3}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 520
    const/4 v4, 0x1

    return v4

    .line 518
    .end local v3    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    .end local v0    # "arr$":[C
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method decode(C)I
    .locals 3
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v1, v0, p1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 505
    aget-byte v0, v0, p1

    return v0

    .line 503
    :cond_0
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method encode(I)C
    .locals 1
    .param p1, "bits"    # I

    .line 494
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    aget-char v0, v0, p1

    return v0
.end method

.method isValidPaddingStartPosition(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 498
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->validPadding:[Z

    iget v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    rem-int v1, p1, v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method lowerCase()Lcom/google/common/io/BaseEncoding$Alphabet;
    .locals 4

    .line 540
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasUpperCase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    return-object p0

    .line 543
    :cond_0
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasLowerCase()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot call lowerCase() on a mixed-case alphabet"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v0, v0

    new-array v0, v0, [C

    .line 545
    .local v0, "lowerCased":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 546
    aget-char v2, v2, v1

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(C)C

    move-result v2

    aput-char v2, v0, v1

    .line 545
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/google/common/io/BaseEncoding$Alphabet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lowerCase()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    return-object v1
.end method

.method public matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .line 554
    sget-object v0, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    return-object v0
.end method

.method upperCase()Lcom/google/common/io/BaseEncoding$Alphabet;
    .locals 4

    .line 527
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasLowerCase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    return-object p0

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasUpperCase()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot call upperCase() on a mixed-case alphabet"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v0, v0

    new-array v0, v0, [C

    .line 532
    .local v0, "upperCased":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 533
    aget-char v2, v2, v1

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toUpperCase(C)C

    move-result v2

    aput-char v2, v0, v1

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/google/common/io/BaseEncoding$Alphabet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".upperCase()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    return-object v1
.end method
