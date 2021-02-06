.class final enum Lcom/google/common/hash/BloomFilterStrategies$1;
.super Lcom/google/common/hash/BloomFilterStrategies;
.source "BloomFilterStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies$1;)V

    return-void
.end method


# virtual methods
.method public mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z
    .locals 7
    .param p3, "numHashFunctions"    # I
    .param p4, "bits"    # Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            ")Z"
        }
    .end annotation

    .line 61
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v0

    .line 62
    .local v0, "hash64":J
    long-to-int v2, v0

    .line 63
    .local v2, "hash1":I
    const/16 v3, 0x20

    ushr-long v3, v0, v3

    long-to-int v3, v3

    .line 64
    .local v3, "hash2":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-gt v4, p3, :cond_2

    .line 65
    mul-int v5, v4, v3

    add-int/2addr v5, v2

    .line 66
    .local v5, "nextHash":I
    if-gez v5, :cond_0

    .line 67
    not-int v5, v5

    .line 69
    :cond_0
    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()I

    move-result v6

    rem-int v6, v5, v6

    invoke-virtual {p4, v6}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 70
    const/4 v6, 0x0

    return v6

    .line 64
    .end local v5    # "nextHash":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z
    .locals 8
    .param p3, "numHashFunctions"    # I
    .param p4, "bits"    # Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            ")Z"
        }
    .end annotation

    .line 45
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v0

    .line 46
    .local v0, "hash64":J
    long-to-int v2, v0

    .line 47
    .local v2, "hash1":I
    const/16 v3, 0x20

    ushr-long v3, v0, v3

    long-to-int v3, v3

    .line 48
    .local v3, "hash2":I
    const/4 v4, 0x0

    .line 49
    .local v4, "bitsChanged":Z
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-gt v5, p3, :cond_1

    .line 50
    mul-int v6, v5, v3

    add-int/2addr v6, v2

    .line 51
    .local v6, "nextHash":I
    if-gez v6, :cond_0

    .line 52
    not-int v6, v6

    .line 54
    :cond_0
    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()I

    move-result v7

    rem-int v7, v6, v7

    invoke-virtual {p4, v7}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->set(I)Z

    move-result v7

    or-int/2addr v4, v7

    .line 49
    .end local v6    # "nextHash":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 56
    .end local v5    # "i":I
    :cond_1
    return v4
.end method
