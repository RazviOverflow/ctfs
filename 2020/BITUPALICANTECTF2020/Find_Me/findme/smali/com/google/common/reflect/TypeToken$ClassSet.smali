.class final Lcom/google/common/reflect/TypeToken$ClassSet;
.super Lcom/google/common/reflect/TypeToken$TypeSet;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClassSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/TypeToken<",
        "TT;>.TypeSet;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient classes:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/reflect/TypeToken;


# direct methods
.method private constructor <init>(Lcom/google/common/reflect/TypeToken;)V
    .locals 0

    .line 639
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$ClassSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/reflect/TypeToken$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/reflect/TypeToken;
    .param p2, "x1"    # Lcom/google/common/reflect/TypeToken$1;

    .line 639
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken$ClassSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 674
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$ClassSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$TypeSet;->classes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public classes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 658
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 639
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$ClassSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 639
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$ClassSet;->delegate()Ljava/util/Set;

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

    .line 644
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$ClassSet;->classes:Lcom/google/common/collect/ImmutableSet;

    .line 645
    .local v0, "result":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Lcom/google/common/reflect/TypeToken<-TT;>;>;"
    if-nez v0, :cond_0

    .line 647
    sget-object v1, Lcom/google/common/reflect/TypeToken$TypeCollector;->FOR_GENERIC_TYPE:Lcom/google/common/reflect/TypeToken$TypeCollector;

    invoke-virtual {v1}, Lcom/google/common/reflect/TypeToken$TypeCollector;->classesOnly()Lcom/google/common/reflect/TypeToken$TypeCollector;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/reflect/TypeToken$ClassSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v1, v2}, Lcom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 649
    .local v1, "collectedTypes":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/reflect/TypeToken<-TT;>;>;"
    invoke-static {v1}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v2

    sget-object v3, Lcom/google/common/reflect/TypeToken$TypeFilter;->IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lcom/google/common/reflect/TypeToken$TypeFilter;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/FluentIterable;->filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/FluentIterable;->toSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/reflect/TypeToken$ClassSet;->classes:Lcom/google/common/collect/ImmutableSet;

    return-object v2

    .line 653
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

    .line 670
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "classes().interfaces() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 664
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    sget-object v0, Lcom/google/common/reflect/TypeToken$TypeCollector;->FOR_RAW_TYPE:Lcom/google/common/reflect/TypeToken$TypeCollector;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$TypeCollector;->classesOnly()Lcom/google/common/reflect/TypeToken$TypeCollector;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$ClassSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->access$200(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 666
    .local v0, "collectedTypes":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Class<-TT;>;>;"
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1
.end method
