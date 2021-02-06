.class abstract Lcom/google/common/cache/CacheBuilderSpec$DurationParser;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DurationParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "spec"    # Lcom/google/common/cache/CacheBuilderSpec;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 416
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const-string v4, "value of key %s omitted"

    invoke-static {v2, v4, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 418
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 420
    .local v3, "lastChar":C
    const/16 v4, 0x64

    if-eq v3, v4, :cond_4

    const/16 v4, 0x68

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    const/16 v4, 0x6d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x73

    if-ne v3, v4, :cond_1

    move-object v4, v5

    .line 431
    .local v4, "timeUnit":Ljava/util/concurrent/TimeUnit;
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v4, v5

    .line 432
    goto :goto_1

    .line 420
    .end local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    :cond_1
    move-object v4, v5

    .line 434
    .restart local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "key %s invalid format.  was %s, must end with one of [dDhHmMsS]"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p2, v7, v0

    aput-object p3, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "spec":Lcom/google/common/cache/CacheBuilderSpec;
    .end local p2    # "key":Ljava/lang/String;
    .end local p3    # "value":Ljava/lang/String;
    throw v5

    .line 420
    .end local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    .restart local p1    # "spec":Lcom/google/common/cache/CacheBuilderSpec;
    .restart local p2    # "key":Ljava/lang/String;
    .restart local p3    # "value":Ljava/lang/String;
    :cond_2
    move-object v4, v5

    .line 428
    .restart local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-object v4, v5

    .line 429
    goto :goto_1

    .line 420
    .end local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    :cond_3
    move-object v4, v5

    .line 425
    .restart local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    move-object v4, v5

    .line 426
    goto :goto_1

    .line 422
    .end local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    :cond_4
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 423
    .restart local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    nop

    .line 439
    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 440
    .local v5, "duration":J
    invoke-virtual {p0, p1, v5, v6, v4}, Lcom/google/common/cache/CacheBuilderSpec$DurationParser;->parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .end local v3    # "lastChar":C
    .end local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    .end local v5    # "duration":J
    nop

    .line 445
    return-void

    .line 441
    :catch_0
    move-exception v3

    .line 442
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    aput-object p3, v2, v1

    const-string v0, "key %s value set to %s, must be integer"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected abstract parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
.end method
