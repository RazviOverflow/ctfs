.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatenatedHashFunction"
.end annotation


# instance fields
.field private final bits:I


# direct methods
.method varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 6
    .param p1, "functions"    # [Lcom/google/common/hash/HashFunction;

    .line 404
    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "bitSum":I
    move-object v1, p1

    .local v1, "arr$":[Lcom/google/common/hash/HashFunction;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 407
    .local v4, "function":Lcom/google/common/hash/HashFunction;
    invoke-interface {v4}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v5

    add-int/2addr v0, v5

    .line 406
    .end local v4    # "function":Lcom/google/common/hash/HashFunction;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    .end local v1    # "arr$":[Lcom/google/common/hash/HashFunction;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    iput v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 410
    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .line 425
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 430
    instance-of v0, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 431
    move-object v0, p1

    check-cast v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    .line 432
    .local v0, "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    iget v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    iget v3, v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    iget-object v3, v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 435
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 436
    iget-object v3, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 437
    return v1

    .line 435
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 433
    :cond_3
    :goto_1
    return v1

    .line 442
    .end local v0    # "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 447
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 448
    .local v0, "hash":I
    iget-object v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    .local v1, "arr$":[Lcom/google/common/hash/HashFunction;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 449
    .local v4, "function":Lcom/google/common/hash/HashFunction;
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v0, v5

    .line 448
    .end local v4    # "function":Lcom/google/common/hash/HashFunction;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 451
    .end local v1    # "arr$":[Lcom/google/common/hash/HashFunction;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return v0
.end method

.method makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .locals 8
    .param p1, "hashers"    # [Lcom/google/common/hash/Hasher;

    .line 414
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 415
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .line 416
    .local v1, "i":I
    move-object v2, p1

    .local v2, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 417
    .local v5, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v5}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v6

    .line 418
    .local v6, "newHash":Lcom/google/common/hash/HashCode;
    invoke-virtual {v6}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v7

    div-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v0, v1, v7}, Lcom/google/common/hash/HashCode;->writeBytesTo([BII)I

    move-result v7

    add-int/2addr v1, v7

    .line 416
    .end local v5    # "hasher":Lcom/google/common/hash/Hasher;
    .end local v6    # "newHash":Lcom/google/common/hash/HashCode;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 420
    .end local v2    # "arr$":[Lcom/google/common/hash/Hasher;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v2

    return-object v2
.end method
