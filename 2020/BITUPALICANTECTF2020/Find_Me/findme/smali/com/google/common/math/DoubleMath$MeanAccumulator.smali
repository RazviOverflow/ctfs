.class final Lcom/google/common/math/DoubleMath$MeanAccumulator;
.super Ljava/lang/Object;
.source "DoubleMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/DoubleMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MeanAccumulator"
.end annotation


# instance fields
.field private count:J

.field private mean:D


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    .line 378
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/math/DoubleMath$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/math/DoubleMath$1;

    .line 375
    invoke-direct {p0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>()V

    return-void
.end method


# virtual methods
.method add(D)V
    .locals 6
    .param p1, "value"    # D

    .line 381
    invoke-static {p1, p2}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 382
    iget-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    .line 384
    iget-wide v2, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    sub-double v4, p1, v2

    long-to-double v0, v0

    div-double/2addr v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    .line 385
    return-void
.end method

.method mean()D
    .locals 4

    .line 388
    iget-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot take mean of 0 values"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 389
    iget-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    return-wide v0
.end method
