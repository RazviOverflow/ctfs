.class final Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;
.super Ljava/lang/Object;
.source "ExecutionQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ExecutionQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RunnableExecutorPair"
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private hasBeenExecuted:Z

.field private final runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/common/util/concurrent/ExecutionQueue;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ExecutionQueue;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 119
    iput-object p1, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->this$0:Lcom/google/common/util/concurrent/ExecutionQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->hasBeenExecuted:Z

    .line 120
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->runnable:Ljava/lang/Runnable;

    .line 121
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->executor:Ljava/util/concurrent/Executor;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;

    .line 109
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->submit()V

    return-void
.end method

.method private submit()V
    .locals 6

    .line 126
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->this$0:Lcom/google/common/util/concurrent/ExecutionQueue;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ExecutionQueue;->access$100(Lcom/google/common/util/concurrent/ExecutionQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 128
    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->hasBeenExecuted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 130
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/google/common/util/concurrent/ExecutionQueue;->access$200()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while executing listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with executor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->this$0:Lcom/google/common/util/concurrent/ExecutionQueue;

    invoke-static {v1}, Lcom/google/common/util/concurrent/ExecutionQueue;->access$100(Lcom/google/common/util/concurrent/ExecutionQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->hasBeenExecuted:Z

    .line 141
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->this$0:Lcom/google/common/util/concurrent/ExecutionQueue;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ExecutionQueue;->access$100(Lcom/google/common/util/concurrent/ExecutionQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 144
    :cond_1
    return-void

    .line 139
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->this$0:Lcom/google/common/util/concurrent/ExecutionQueue;

    invoke-static {v2}, Lcom/google/common/util/concurrent/ExecutionQueue;->access$100(Lcom/google/common/util/concurrent/ExecutionQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->hasBeenExecuted:Z

    .line 141
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->this$0:Lcom/google/common/util/concurrent/ExecutionQueue;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ExecutionQueue;->access$100(Lcom/google/common/util/concurrent/ExecutionQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->this$0:Lcom/google/common/util/concurrent/ExecutionQueue;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ExecutionQueue;->access$100(Lcom/google/common/util/concurrent/ExecutionQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->hasBeenExecuted:Z

    .line 152
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->this$0:Lcom/google/common/util/concurrent/ExecutionQueue;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ExecutionQueue;->access$100(Lcom/google/common/util/concurrent/ExecutionQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionQueue$RunnableExecutorPair;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 155
    return-void
.end method
