.class public abstract Lcom/android/volley/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/Request$Priority;,
        Lcom/android/volley/Request$NetworkRequestCompleteListener;,
        Lcom/android/volley/Request$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/volley/Request<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mCacheEntry:Lcom/android/volley/Cache$Entry;

.field private mCanceled:Z

.field private final mDefaultTrafficStatsTag:I

.field private mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field private final mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

.field private final mLock:Ljava/lang/Object;

.field private final mMethod:I

.field private mRequestCompleteListener:Lcom/android/volley/Request$NetworkRequestCompleteListener;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mResponseDelivered:Z

.field private mRetryPolicy:Lcom/android/volley/RetryPolicy;

.field private mSequence:Ljava/lang/Integer;

.field private mShouldCache:Z

.field private mShouldRetryServerErrors:Z

.field private mTag:Ljava/lang/Object;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/volley/Response$ErrorListener;

    .line 145
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-direct {v0}, Lcom/android/volley/VolleyLog$MarkerLog;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/Request;->mShouldCache:Z

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/Request;->mCanceled:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/volley/Request;->mResponseDelivered:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/volley/Request;->mShouldRetryServerErrors:Z

    .line 118
    iput-object v1, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/Cache$Entry;

    .line 146
    iput p1, p0, Lcom/android/volley/Request;->mMethod:I

    .line 147
    iput-object p2, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 149
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/android/volley/DefaultRetryPolicy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 151
    invoke-static {p2}, Lcom/android/volley/Request;->findDefaultTrafficStatsTag(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/volley/Request;->mDefaultTrafficStatsTag:I

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$MarkerLog;
    .locals 1
    .param p0, "x0"    # Lcom/android/volley/Request;

    .line 38
    iget-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

    return-object v0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 7
    .param p2, "paramsEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 473
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v0, "encodedParams":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 476
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 484
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 477
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 482
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 478
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "encodedParams":Ljava/lang/StringBuilder;
    .end local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p2    # "paramsEncoding":Ljava/lang/String;
    throw v1

    .line 489
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "encodedParams":Ljava/lang/StringBuilder;
    .restart local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p2    # "paramsEncoding":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoding not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static findDefaultTrafficStatsTag(Ljava/lang/String;)I
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    return v2

    .line 203
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "host":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 218
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 221
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 337
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/volley/Request;->mCanceled:Z

    .line 339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 340
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public compareTo(Lcom/android/volley/Request;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;)I"
        }
    .end annotation

    .line 668
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    .local p1, "other":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v0

    .line 669
    .local v0, "left":Lcom/android/volley/Request$Priority;
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v1

    .line 673
    .local v1, "right":Lcom/android/volley/Request$Priority;
    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v3

    :goto_0
    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 38
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    check-cast p1, Lcom/android/volley/Request;

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->compareTo(Lcom/android/volley/Request;)I

    move-result p1

    return p1
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 613
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 615
    .local v1, "listener":Lcom/android/volley/Response$ErrorListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    if-eqz v1, :cond_0

    .line 617
    invoke-interface {v1, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 619
    :cond_0
    return-void

    .line 615
    .end local v1    # "listener":Lcom/android/volley/Response$ErrorListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected abstract deliverResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method finish(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 229
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->finish(Lcom/android/volley/Request;)V

    .line 232
    :cond_0
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_2

    .line 233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 234
    .local v0, "threadId":J
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 237
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 238
    .local v2, "mainThread":Landroid/os/Handler;
    new-instance v3, Lcom/android/volley/Request$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/volley/Request$1;-><init>(Lcom/android/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void

    .line 249
    .end local v2    # "mainThread":Landroid/os/Handler;
    :cond_1
    iget-object v2, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 250
    iget-object v2, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-virtual {p0}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    .line 252
    .end local v0    # "threadId":J
    :cond_2
    return-void
.end method

.method public getBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 464
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 465
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 468
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    .line 451
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lcom/android/volley/Cache$Entry;
    .locals 1

    .line 317
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/Cache$Entry;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 4

    .line 290
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/volley/Request;->getMethod()I

    move-result v1

    .line 298
    .local v1, "method":I
    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 299
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 2

    .line 182
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    monitor-exit v0

    return-object v1

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 357
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .line 156
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget v0, p0, Lcom/android/volley/Request;->mMethod:I

    return v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 429
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .locals 1

    .line 446
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 413
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPostParams()Ljava/util/Map;

    move-result-object v0

    .line 414
    .local v0, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 417
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 398
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 372
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParamsEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 540
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/android/volley/RetryPolicy;
    .locals 1

    .line 554
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mRetryPolicy:Lcom/android/volley/RetryPolicy;

    return-object v0
.end method

.method public final getSequence()I
    .locals 2

    .line 277
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 176
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .locals 1

    .line 549
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/volley/RetryPolicy;->getCurrentTimeout()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

    .line 189
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget v0, p0, Lcom/android/volley/Request;->mDefaultTrafficStatsTag:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 285
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .locals 2

    .line 569
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_0
    iget-boolean v1, p0, Lcom/android/volley/Request;->mResponseDelivered:Z

    monitor-exit v0

    return v1

    .line 571
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCanceled()Z
    .locals 2

    .line 345
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-boolean v1, p0, Lcom/android/volley/Request;->mCanceled:Z

    monitor-exit v0

    return v1

    .line 347
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markDelivered()V
    .locals 2

    .line 562
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/volley/Request;->mResponseDelivered:Z

    .line 564
    monitor-exit v0

    .line 565
    return-void

    .line 564
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyListenerResponseNotUsable()V
    .locals 2

    .line 654
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/Request;->mRequestCompleteListener:Lcom/android/volley/Request$NetworkRequestCompleteListener;

    .line 656
    .local v1, "listener":Lcom/android/volley/Request$NetworkRequestCompleteListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    if-eqz v1, :cond_0

    .line 658
    invoke-interface {v1, p0}, Lcom/android/volley/Request$NetworkRequestCompleteListener;->onNoUsableResponseReceived(Lcom/android/volley/Request;)V

    .line 660
    :cond_0
    return-void

    .line 656
    .end local v1    # "listener":Lcom/android/volley/Request$NetworkRequestCompleteListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyListenerResponseReceived(Lcom/android/volley/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response<",
            "*>;)V"
        }
    .end annotation

    .line 640
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    .local p1, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/Request;->mRequestCompleteListener:Lcom/android/volley/Request$NetworkRequestCompleteListener;

    .line 642
    .local v1, "listener":Lcom/android/volley/Request$NetworkRequestCompleteListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    if-eqz v1, :cond_0

    .line 644
    invoke-interface {v1, p0, p1}, Lcom/android/volley/Request$NetworkRequestCompleteListener;->onResponseReceived(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    .line 646
    :cond_0
    return-void

    .line 642
    .end local v1    # "listener":Lcom/android/volley/Request$NetworkRequestCompleteListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 0
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 593
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    return-object p1
.end method

.method protected abstract parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation
.end method

.method public setCacheEntry(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;
    .locals 0
    .param p1, "entry"    # Lcom/android/volley/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 311
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/Cache$Entry;

    .line 312
    return-object p0
.end method

.method setNetworkRequestCompleteListener(Lcom/android/volley/Request$NetworkRequestCompleteListener;)V
    .locals 2
    .param p1, "requestCompleteListener"    # Lcom/android/volley/Request$NetworkRequestCompleteListener;

    .line 627
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_0
    iput-object p1, p0, Lcom/android/volley/Request;->mRequestCompleteListener:Lcom/android/volley/Request$NetworkRequestCompleteListener;

    .line 629
    monitor-exit v0

    .line 630
    return-void

    .line 629
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRequestQueue(Lcom/android/volley/RequestQueue;)Lcom/android/volley/Request;
    .locals 0
    .param p1, "requestQueue"    # Lcom/android/volley/RequestQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestQueue;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/android/volley/Request;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 262
    return-object p0
.end method

.method public setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;
    .locals 0
    .param p1, "retryPolicy"    # Lcom/android/volley/RetryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RetryPolicy;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/android/volley/Request;->mRetryPolicy:Lcom/android/volley/RetryPolicy;

    .line 213
    return-object p0
.end method

.method public final setSequence(I)Lcom/android/volley/Request;
    .locals 1
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    .line 272
    return-object p0
.end method

.method public final setShouldCache(Z)Lcom/android/volley/Request;
    .locals 0
    .param p1, "shouldCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 501
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-boolean p1, p0, Lcom/android/volley/Request;->mShouldCache:Z

    .line 502
    return-object p0
.end method

.method public final setShouldRetryServerErrors(Z)Lcom/android/volley/Request;
    .locals 0
    .param p1, "shouldRetryServerErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 516
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-boolean p1, p0, Lcom/android/volley/Request;->mShouldRetryServerErrors:Z

    .line 517
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/android/volley/Request;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/android/volley/Request;->mTag:Ljava/lang/Object;

    .line 167
    return-object p0
.end method

.method public final shouldCache()Z
    .locals 1

    .line 507
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/android/volley/Request;->mShouldCache:Z

    return v0
.end method

.method public final shouldRetryServerErrors()Z
    .locals 1

    .line 524
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/android/volley/Request;->mShouldRetryServerErrors:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 678
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "trafficStatsTag":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    return-object v1
.end method
