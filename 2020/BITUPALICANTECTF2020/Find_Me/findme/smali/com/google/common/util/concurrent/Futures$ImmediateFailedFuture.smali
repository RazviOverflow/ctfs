.class Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture;
.super Lcom/google/common/util/concurrent/Futures$ImmediateFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateFailedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Futures$ImmediateFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final thrown:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .line 180
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$ImmediateFuture;-><init>(Lcom/google/common/util/concurrent/Futures$1;)V

    .line 181
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture;->thrown:Ljava/lang/Throwable;

    .line 182
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 186
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture<TV;>;"
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture;->thrown:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
