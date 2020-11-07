.class Lcom/google/common/util/concurrent/AtomicLongMap$1;
.super Ljava/lang/Object;
.source "AtomicLongMap.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AtomicLongMap;->createAsMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AtomicLongMap;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AtomicLongMap;)V
    .locals 0

    .line 291
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap$1;, "Lcom/google/common/util/concurrent/AtomicLongMap.1;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/AtomicLongMap$1;->this$0:Lcom/google/common/util/concurrent/AtomicLongMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/concurrent/atomic/AtomicLong;)Ljava/lang/Long;
    .locals 2
    .param p1, "atomic"    # Ljava/util/concurrent/atomic/AtomicLong;

    .line 294
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap$1;, "Lcom/google/common/util/concurrent/AtomicLongMap.1;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 291
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap$1;, "Lcom/google/common/util/concurrent/AtomicLongMap.1;"
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AtomicLongMap$1;->apply(Ljava/util/concurrent/atomic/AtomicLong;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
