.class final Lcom/google/common/hash/SipHashFunction$SipHasher;
.super Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;
.source "SipHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/SipHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SipHasher"
.end annotation


# static fields
.field private static final CHUNK_SIZE:I = 0x8


# instance fields
.field private b:J

.field private final c:I

.field private final d:I

.field private finalM:J

.field private v0:J

.field private v1:J

.field private v2:J

.field private v3:J


# direct methods
.method constructor <init>(IIJJ)V
    .locals 11
    .param p1, "c"    # I
    .param p2, "d"    # I
    .param p3, "k0"    # J
    .param p5, "k1"    # J

    .line 119
    move-object v0, p0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;-><init>(I)V

    .line 106
    const-wide v1, 0x736f6d6570736575L    # 1.0986868386607877E248

    iput-wide v1, v0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    .line 107
    const-wide v3, 0x646f72616e646f6dL    # 6.222199573468475E175

    iput-wide v3, v0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    .line 108
    const-wide v5, 0x6c7967656e657261L    # 3.4208747916531402E214

    iput-wide v5, v0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    .line 109
    const-wide v7, 0x7465646279746573L    # 4.901176695720602E252

    iput-wide v7, v0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    .line 112
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Lcom/google/common/hash/SipHashFunction$SipHasher;->b:J

    .line 116
    iput-wide v9, v0, Lcom/google/common/hash/SipHashFunction$SipHasher;->finalM:J

    .line 120
    move v9, p1

    iput v9, v0, Lcom/google/common/hash/SipHashFunction$SipHasher;->c:I

    .line 121
    move v10, p2

    iput v10, v0, Lcom/google/common/hash/SipHashFunction$SipHasher;->d:I

    .line 122
    xor-long/2addr v1, p3

    iput-wide v1, v0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    .line 123
    xor-long v1, v3, p5

    iput-wide v1, v0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    .line 124
    xor-long v1, v5, p3

    iput-wide v1, v0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    .line 125
    xor-long v1, v7, p5

    iput-wide v1, v0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    .line 126
    return-void
.end method

.method private processM(J)V
    .locals 2
    .param p1, "m"    # J

    .line 152
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    xor-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    .line 153
    iget v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->c:I

    invoke-direct {p0, v0}, Lcom/google/common/hash/SipHashFunction$SipHasher;->sipRound(I)V

    .line 154
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    xor-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    .line 155
    return-void
.end method

.method private sipRound(I)V
    .locals 8
    .param p1, "iterations"    # I

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 159
    iget-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    iget-wide v3, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    .line 160
    iget-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    iget-wide v5, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    .line 161
    const/16 v1, 0xd

    invoke-static {v3, v4, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    .line 162
    iget-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    .line 163
    iget-wide v3, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    iget-wide v5, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    .line 164
    iget-wide v3, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    .line 165
    const/16 v1, 0x20

    invoke-static {v5, v6, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    .line 166
    iget-wide v4, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    iget-wide v6, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    .line 167
    iget-wide v4, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    .line 168
    const/16 v2, 0x11

    invoke-static {v6, v7, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    .line 169
    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    const/16 v4, 0x15

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    .line 170
    iget-wide v4, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    iget-wide v6, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    .line 171
    iget-wide v4, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    .line 172
    invoke-static {v6, v7, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public makeHash()Lcom/google/common/hash/HashCode;
    .locals 5

    .line 142
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->finalM:J

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->b:J

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->finalM:J

    .line 143
    invoke-direct {p0, v0, v1}, Lcom/google/common/hash/SipHashFunction$SipHasher;->processM(J)V

    .line 146
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    const-wide/16 v2, 0xff

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    .line 147
    iget v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->d:I

    invoke-direct {p0, v0}, Lcom/google/common/hash/SipHashFunction$SipHasher;->sipRound(I)V

    .line 148
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method protected process(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 129
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->b:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->b:J

    .line 130
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/common/hash/SipHashFunction$SipHasher;->processM(J)V

    .line 131
    return-void
.end method

.method protected processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 134
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->b:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->b:J

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->finalM:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    shl-long/2addr v3, v0

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->finalM:J

    .line 135
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
