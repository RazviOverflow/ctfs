.class final Lcom/google/common/util/concurrent/ExecutionQueue;
.super Ljava/lang/Object;
.source "ExecutionQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final queuedListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/google/common/util/concurrent/ExecutionQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ExecutionQueue;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/common/collect/Queues;->newConcurrentLinkedQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ExecutionQueue;->queuedListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ExecutionQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 109
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/ExecutionQueue;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ExecutionQueue;

    .line 54
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/common/util/concurrent/ExecutionQueue;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 71
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionQueue;->queuedListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;-><init>(Lcom/google/common/util/concurrent/ExecutionQueue;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method execute()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionQueue;->queuedListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;

    invoke-static {v1}, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->access$000(Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;)V

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method
