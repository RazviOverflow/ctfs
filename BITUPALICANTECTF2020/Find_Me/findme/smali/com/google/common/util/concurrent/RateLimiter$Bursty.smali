.class Lcom/google/common/util/concurrent/RateLimiter$Bursty;
.super Lcom/google/common/util/concurrent/RateLimiter;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bursty"
.end annotation


# instance fields
.field final maxBurstSeconds:D


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;D)V
    .locals 1
    .param p1, "ticker"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
    .param p2, "maxBurstSeconds"    # D

    .line 669
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;Lcom/google/common/util/concurrent/RateLimiter$1;)V

    .line 670
    iput-wide p2, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->maxBurstSeconds:D

    .line 671
    return-void
.end method


# virtual methods
.method doSetRate(DD)V
    .locals 6
    .param p1, "permitsPerSecond"    # D
    .param p3, "stableIntervalMicros"    # D

    .line 675
    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->maxPermits:D

    .line 676
    .local v0, "oldMaxPermits":D
    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->maxBurstSeconds:D

    mul-double/2addr v2, p1

    iput-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->maxPermits:D

    .line 677
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->storedPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->maxPermits:D

    mul-double/2addr v2, v4

    div-double/2addr v2, v0

    :goto_0
    iput-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->storedPermits:D

    .line 680
    return-void
.end method

.method storedPermitsToWaitTime(DD)J
    .locals 2
    .param p1, "storedPermits"    # D
    .param p3, "permitsToTake"    # D

    .line 684
    const-wide/16 v0, 0x0

    return-wide v0
.end method
