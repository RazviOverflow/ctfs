.class Lcom/google/common/collect/BinaryTreeTraverser$2;
.super Lcom/google/common/collect/FluentIterable;
.source "BinaryTreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/BinaryTreeTraverser;->inOrderTraversal(Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/BinaryTreeTraverser;

.field final synthetic val$root:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V
    .locals 0

    .line 171
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$2;, "Lcom/google/common/collect/BinaryTreeTraverser.2;"
    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$2;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    iput-object p2, p0, Lcom/google/common/collect/BinaryTreeTraverser$2;->val$root:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$2;, "Lcom/google/common/collect/BinaryTreeTraverser.2;"
    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;

    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$2;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$2;->val$root:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;-><init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 171
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$2;, "Lcom/google/common/collect/BinaryTreeTraverser.2;"
    invoke-virtual {p0}, Lcom/google/common/collect/BinaryTreeTraverser$2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
