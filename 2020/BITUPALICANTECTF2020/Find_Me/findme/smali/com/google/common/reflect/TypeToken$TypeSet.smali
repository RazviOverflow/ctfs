.class public Lcom/google/common/reflect/TypeToken$TypeSet;
.super Lcom/google/common/collect/ForwardingSet;
.source "TypeToken.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet<",
        "Lcom/google/common/reflect/TypeToken<",
        "-TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lcom/google/common/reflect/TypeToken;

.field private transient types:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken;)V
    .locals 0

    .line 551
    .local p0, "this":Lcom/google/common/reflect/TypeToken$TypeSet;, "Lcom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$TypeSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method public classes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 560
    .local p0, "this":Lcom/google/common/reflect/TypeToken$TypeSet;, "Lcom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    new-instance v0, Lcom/google/common/reflect/TypeToken$ClassSet;

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$TypeSet;->this$0:Lcom/google/common/reflect/TypeToken;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/TypeToken$ClassSet;-><init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/reflect/TypeToken$1;)V

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 547
    .local p0, "this":Lcom/google/common/reflect/TypeToken$TypeSet;, "Lcom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$TypeSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 547
    .local p0, "this":Lcom/google/common/reflect/TypeToken$TypeSet;, "Lcom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$TypeSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 564
    .local p0, "this":Lcom/google/common/reflect/TypeToken$TypeSet;, "Lcom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$TypeSet;->types:Lcom/google/common/collect/ImmutableSet;

    .line 565
    .local v0, "filteredTypes":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Lcom/google/common/reflect/TypeToken<-TT;>;>;"
    if-nez v0, :cond_0

    .line 568
    sget-object v1, Lcom/google/common/reflect/TypeToken$TypeCollector;->FOR_GENERIC_TYPE:Lcom/google/common/reflect/TypeToken$TypeCollector;

    iget-object v2, p0, Lcom/google/common/reflect/TypeToken$TypeSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v1, v2}, Lcom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 570
    .local v1, "collectedTypes":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/reflect/TypeToken<-TT;>;>;"
    invoke-static {v1}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v2

    sget-object v3, Lcom/google/common/reflect/TypeToken$TypeFilter;->IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lcom/google/common/reflect/TypeToken$TypeFilter;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/FluentIterable;->filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/FluentIterable;->toSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/reflect/TypeToken$TypeSet;->types:Lcom/google/common/collect/ImmutableSet;

    return-object v2

    .line 574
    .end local v1    # "collectedTypes":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/reflect/TypeToken<-TT;>;>;"
    :cond_0
    return-object v0
.end method

.method public interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 555
    .local p0, "this":Lcom/google/common/reflect/TypeToken$TypeSet;, "Lcom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    new-instance v0, Lcom/google/common/reflect/TypeToken$InterfaceSet;

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$TypeSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-direct {v0, v1, p0}, Lcom/google/common/reflect/TypeToken$InterfaceSet;-><init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/reflect/TypeToken$TypeSet;)V

    return-object v0
.end method

.method public rawTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 582
    .local p0, "this":Lcom/google/common/reflect/TypeToken$TypeSet;, "Lcom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    sget-object v0, Lcom/google/common/reflect/TypeToken$TypeCollector;->FOR_RAW_TYPE:Lcom/google/common/reflect/TypeToken$TypeCollector;

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$TypeSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->access$200(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 584
    .local v0, "collectedTypes":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Class<-TT;>;>;"
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1
.end method
