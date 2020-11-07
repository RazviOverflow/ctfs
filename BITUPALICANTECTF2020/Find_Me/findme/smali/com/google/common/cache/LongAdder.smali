.class final Lcom/google/common/cache/LongAdder;
.super Lcom/google/common/cache/Striped64;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/common/cache/LongAddable;


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/google/common/cache/Striped64;-><init>()V

    .line 62
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/LongAdder;->busy:I

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 208
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 209
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 200
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 201
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 13
    .param p1, "x"    # J

    .line 71
    iget-object v0, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object v1, v0

    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/LongAdder;->base:J

    move-wide v4, v2

    .local v4, "b":J
    add-long v6, v4, p1

    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/google/common/cache/LongAdder;->casBase(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    .end local v4    # "b":J
    :cond_0
    const/4 v0, 0x1

    .line 73
    .local v0, "uncontended":Z
    sget-object v2, Lcom/google/common/cache/LongAdder;->threadHashCode:Lcom/google/common/cache/Striped64$ThreadHashCode;

    invoke-virtual {v2}, Lcom/google/common/cache/Striped64$ThreadHashCode;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/Striped64$HashCode;

    move-object v3, v2

    .local v3, "hc":Lcom/google/common/cache/Striped64$HashCode;
    iget v2, v2, Lcom/google/common/cache/Striped64$HashCode;->code:I

    .line 74
    .local v2, "h":I
    if-eqz v1, :cond_1

    array-length v4, v1

    move v5, v4

    .local v5, "n":I
    const/4 v6, 0x1

    if-lt v4, v6, :cond_1

    add-int/lit8 v4, v5, -0x1

    and-int/2addr v4, v2

    aget-object v4, v1, v4

    move-object v6, v4

    .local v6, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v4, :cond_1

    iget-wide v7, v6, Lcom/google/common/cache/Striped64$Cell;->value:J

    move-wide v9, v7

    .local v9, "v":J
    add-long v11, v9, p1

    invoke-virtual {v6, v7, v8, v11, v12}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v4

    move v0, v4

    if-nez v4, :cond_2

    .line 77
    .end local v5    # "n":I
    .end local v6    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v9    # "v":J
    :cond_1
    invoke-virtual {p0, p1, p2, v3, v0}, Lcom/google/common/cache/LongAdder;->retryUpdate(JLcom/google/common/cache/Striped64$HashCode;Z)V

    .line 79
    .end local v0    # "uncontended":Z
    .end local v2    # "h":I
    .end local v3    # "hc":Lcom/google/common/cache/Striped64$HashCode;
    :cond_2
    return-void
.end method

.method public decrement()V
    .locals 2

    .line 92
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 93
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method final fn(JJ)J
    .locals 2
    .param p1, "v"    # J
    .param p3, "x"    # J

    .line 56
    add-long v0, p1, p3

    return-wide v0
.end method

.method public increment()V
    .locals 2

    .line 85
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 86
    return-void
.end method

.method public intValue()I
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 126
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->internalReset(J)V

    .line 127
    return-void
.end method

.method public sum()J
    .locals 8

    .line 105
    iget-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 106
    .local v0, "sum":J
    iget-object v2, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 107
    .local v2, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v2, :cond_1

    .line 108
    array-length v3, v2

    .line 109
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 110
    aget-object v5, v2, v4

    .line 111
    .local v5, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v5, :cond_0

    .line 112
    iget-wide v6, v5, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v0, v6

    .line 109
    .end local v5    # "a":Lcom/google/common/cache/Striped64$Cell;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "n":I
    .end local v4    # "i":I
    :cond_1
    return-wide v0
.end method

.method public sumThenReset()J
    .locals 10

    .line 140
    iget-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 141
    .local v0, "sum":J
    iget-object v2, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 142
    .local v2, "as":[Lcom/google/common/cache/Striped64$Cell;
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 143
    if-eqz v2, :cond_1

    .line 144
    array-length v5, v2

    .line 145
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 146
    aget-object v7, v2, v6

    .line 147
    .local v7, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v7, :cond_0

    .line 148
    iget-wide v8, v7, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v0, v8

    .line 149
    iput-wide v3, v7, Lcom/google/common/cache/Striped64$Cell;->value:J

    .line 145
    .end local v7    # "a":Lcom/google/common/cache/Striped64$Cell;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 153
    .end local v5    # "n":I
    .end local v6    # "i":I
    :cond_1
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
