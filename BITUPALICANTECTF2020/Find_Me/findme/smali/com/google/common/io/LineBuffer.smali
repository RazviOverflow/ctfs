.class abstract Lcom/google/common/io/LineBuffer;
.super Ljava/lang/Object;
.source "LineBuffer.java"


# instance fields
.field private line:Ljava/lang/StringBuilder;

.field private sawReturn:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    return-void
.end method

.method private finishLine(Z)Z
    .locals 2
    .param p1, "sawNewline"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const-string v1, "\r\n"

    goto :goto_0

    :cond_0
    const-string v1, "\r"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "\n"

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/LineBuffer;->handleLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    .line 93
    return p1
.end method


# virtual methods
.method protected add([CII)V
    .locals 8
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    move v0, p2

    .line 52
    .local v0, "pos":I
    iget-boolean v1, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-lez p3, :cond_1

    .line 54
    aget-char v1, p1, v0

    if-ne v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 59
    :cond_1
    move v1, v0

    .line 60
    .local v1, "start":I
    add-int v5, p2, p3

    .local v5, "end":I
    :goto_1
    if-ge v0, v5, :cond_6

    .line 61
    aget-char v6, p1, v0

    if-eq v6, v3, :cond_5

    const/16 v7, 0xd

    if-eq v6, v7, :cond_2

    goto :goto_3

    .line 63
    :cond_2
    iget-object v6, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int v7, v0, v1

    invoke-virtual {v6, p1, v1, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 64
    iput-boolean v4, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    .line 65
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v5, :cond_4

    .line 66
    add-int/lit8 v6, v0, 0x1

    aget-char v6, p1, v6

    if-ne v6, v3, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    invoke-direct {p0, v6}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 70
    :cond_4
    add-int/lit8 v1, v0, 0x1

    .line 71
    goto :goto_3

    .line 74
    :cond_5
    iget-object v6, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int v7, v0, v1

    invoke-virtual {v6, p1, v1, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p0, v4}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    .line 76
    add-int/lit8 v1, v0, 0x1

    .line 77
    nop

    .line 60
    :goto_3
    add-int/2addr v0, v4

    goto :goto_1

    .line 83
    .end local v5    # "end":I
    :cond_6
    iget-object v2, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    add-int v3, p2, p3

    sub-int/2addr v3, v1

    invoke-virtual {v2, p1, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 84
    return-void
.end method

.method protected finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    .line 107
    :cond_1
    return-void
.end method

.method protected abstract handleLine(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
