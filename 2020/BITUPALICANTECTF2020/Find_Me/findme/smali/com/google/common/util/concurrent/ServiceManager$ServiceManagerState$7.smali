.class Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$7;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->fireFailedListeners(Lcom/google/common/util/concurrent/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

.field final synthetic val$pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

.field final synthetic val$service:Lcom/google/common/util/concurrent/Service;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;Lcom/google/common/util/concurrent/Service;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$7;->this$0:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$7;->val$pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    iput-object p3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$7;->val$service:Lcom/google/common/util/concurrent/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$7;->val$pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;->listener:Lcom/google/common/util/concurrent/ServiceManager$Listener;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$7;->val$service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$Listener;->failure(Lcom/google/common/util/concurrent/Service;)V

    .line 696
    return-void
.end method
