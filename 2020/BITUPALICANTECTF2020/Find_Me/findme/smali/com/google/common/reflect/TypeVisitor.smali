.class abstract Lcom/google/common/reflect/TypeVisitor;
.super Ljava/lang/Object;
.source "TypeVisitor.java"


# instance fields
.field private final visited:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final varargs visit([Ljava/lang/reflect/Type;)V
    .locals 8
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .line 70
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, v0, v2

    .line 71
    .local v3, "type":Ljava/lang/reflect/Type;
    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    goto :goto_2

    .line 75
    :cond_0
    const/4 v4, 0x0

    .line 77
    .local v4, "succeeded":Z
    :try_start_0
    instance-of v5, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_1

    .line 78
    move-object v5, v3

    check-cast v5, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0, v5}, Lcom/google/common/reflect/TypeVisitor;->visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V

    goto :goto_1

    .line 79
    :cond_1
    instance-of v5, v3, Ljava/lang/reflect/WildcardType;

    if-eqz v5, :cond_2

    .line 80
    move-object v5, v3

    check-cast v5, Ljava/lang/reflect/WildcardType;

    invoke-virtual {p0, v5}, Lcom/google/common/reflect/TypeVisitor;->visitWildcardType(Ljava/lang/reflect/WildcardType;)V

    goto :goto_1

    .line 81
    :cond_2
    instance-of v5, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_3

    .line 82
    move-object v5, v3

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, v5}, Lcom/google/common/reflect/TypeVisitor;->visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V

    goto :goto_1

    .line 83
    :cond_3
    instance-of v5, v3, Ljava/lang/Class;

    if-eqz v5, :cond_4

    .line 84
    move-object v5, v3

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {p0, v5}, Lcom/google/common/reflect/TypeVisitor;->visitClass(Ljava/lang/Class;)V

    goto :goto_1

    .line 85
    :cond_4
    instance-of v5, v3, Ljava/lang/reflect/GenericArrayType;

    if-eqz v5, :cond_5

    .line 86
    move-object v5, v3

    check-cast v5, Ljava/lang/reflect/GenericArrayType;

    invoke-virtual {p0, v5}, Lcom/google/common/reflect/TypeVisitor;->visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :goto_1
    const/4 v4, 0x1

    .line 92
    if-nez v4, :cond_7

    .line 93
    iget-object v5, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 88
    :cond_5
    :try_start_1
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "type":Ljava/lang/reflect/Type;
    .end local v4    # "succeeded":Z
    .end local p1    # "types":[Ljava/lang/reflect/Type;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .restart local v0    # "arr$":[Ljava/lang/reflect/Type;
    .restart local v1    # "len$":I
    .restart local v2    # "i$":I
    .restart local v3    # "type":Ljava/lang/reflect/Type;
    .restart local v4    # "succeeded":Z
    .restart local p1    # "types":[Ljava/lang/reflect/Type;
    :catchall_0
    move-exception v5

    if-nez v4, :cond_6

    .line 93
    iget-object v6, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_6
    throw v5

    .line 70
    .end local v3    # "type":Ljava/lang/reflect/Type;
    .end local v4    # "succeeded":Z
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_8
    return-void
.end method

.method visitClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 99
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/reflect/GenericArrayType;

    .line 100
    return-void
.end method

.method visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/reflect/ParameterizedType;

    .line 101
    return-void
.end method

.method visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 102
    .local p1, "t":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    return-void
.end method

.method visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/reflect/WildcardType;

    .line 103
    return-void
.end method
