.class final Lcom/google/common/hash/Murmur3_128HashFunction;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "Murmur3_128HashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final seed:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "seed"    # I

    .line 47
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 48
    iput p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    .line 49
    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .line 52
    const/16 v0, 0x80

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    instance-of v0, p1, Lcom/google/common/hash/Murmur3_128HashFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    .line 68
    .local v0, "other":Lcom/google/common/hash/Murmur3_128HashFunction;
    iget v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    iget v3, v0, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 70
    .end local v0    # "other":Lcom/google/common/hash/Murmur3_128HashFunction;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 2

    .line 56
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;

    iget v1, p0, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hashing.murmur3_128("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
