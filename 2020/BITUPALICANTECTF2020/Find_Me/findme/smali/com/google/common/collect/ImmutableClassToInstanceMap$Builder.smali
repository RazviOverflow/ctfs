.class public final Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableClassToInstanceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableClassToInstanceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    .local p0, "this":Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;, "Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->mapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;

    return-void
.end method

.method private static cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TB;)TT;"
        }
    .end annotation

    .line 97
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TB;"
    invoke-static {p0}, Lcom/google/common/primitives/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableClassToInstanceMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableClassToInstanceMap<",
            "TB;>;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;, "Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder<TB;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableClassToInstanceMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->mapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableClassToInstanceMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder<",
            "TB;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;, "Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder<TB;>;"
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->mapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 74
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Class<",
            "+TT;>;+TT;>;)",
            "Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder<",
            "TB;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;, "Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder<TB;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Class<+TT;>;+TT;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Class<+TT;>;+TT;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 90
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 91
    .local v3, "value":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->mapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 92
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Class<+TT;>;+TT;>;"
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 93
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object p0
.end method
