.class Lcom/google/common/collect/Iterables$10$1;
.super Ljava/lang/Object;
.source "Iterables.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterables$10;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field atStart:Z

.field final synthetic this$0:Lcom/google/common/collect/Iterables$10;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Iterables$10;Ljava/util/Iterator;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/google/common/collect/Iterables$10$1;->this$0:Lcom/google/common/collect/Iterables$10;

    iput-object p2, p0, Lcom/google/common/collect/Iterables$10$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/common/collect/Iterables$10$1;->atStart:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/google/common/collect/Iterables$10$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 878
    iget-object v0, p0, Lcom/google/common/collect/Iterables$10$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 879
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/common/collect/Iterables$10$1;->atStart:Z

    .line 880
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 885
    iget-boolean v0, p0, Lcom/google/common/collect/Iterables$10$1;->atStart:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 886
    iget-object v0, p0, Lcom/google/common/collect/Iterables$10$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 887
    return-void
.end method
