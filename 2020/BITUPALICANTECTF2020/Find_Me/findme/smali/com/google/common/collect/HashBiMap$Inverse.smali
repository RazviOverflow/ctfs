.class final Lcom/google/common/collect/HashBiMap$Inverse;
.super Ljava/util/AbstractMap;
.source "HashBiMap.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "TV;TK;>;",
        "Lcom/google/common/collect/BiMap<",
        "TV;TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/HashBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    .line 486
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 543
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/HashBiMap;
    .param p2, "x1"    # Lcom/google/common/collect/HashBiMap$1;

    .line 486
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$Inverse;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 498
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->forward()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->clear()V

    .line 499
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 503
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->forward()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 576
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$Inverse$1;-><init>(Lcom/google/common/collect/HashBiMap$Inverse;)V

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)TK;"
        }
    .end annotation

    .line 519
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/google/common/collect/HashBiMap;->access$1000(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method forward()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 488
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 508
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$300(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$600(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    .line 509
    .local v0, "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    :goto_0
    return-object v1
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 535
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->forward()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 540
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;-><init>(Lcom/google/common/collect/HashBiMap$Inverse;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)TK;"
        }
    .end annotation

    .line 514
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/google/common/collect/HashBiMap;->access$1000(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 524
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$300(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$600(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    .line 525
    .local v0, "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 526
    const/4 v1, 0x0

    return-object v1

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 529
    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 493
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$900(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 486
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 571
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->forward()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 632
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$InverseSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/HashBiMap$InverseSerializedForm;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-object v0
.end method
