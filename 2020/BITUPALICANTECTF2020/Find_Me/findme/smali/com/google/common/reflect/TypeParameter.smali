.class public abstract Lcom/google/common/reflect/TypeParameter;
.super Lcom/google/common/reflect/TypeCapture;
.source "TypeParameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/TypeCapture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final typeVariable:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 4

    .line 46
    .local p0, "this":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<TT;>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeCapture;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeParameter;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 48
    .local v0, "type":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "%s should be a type variable."

    invoke-static {v1, v3, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    iput-object v1, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 50
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    .local p0, "this":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<TT;>;"
    instance-of v0, p1, Lcom/google/common/reflect/TypeParameter;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p1

    check-cast v0, Lcom/google/common/reflect/TypeParameter;

    .line 59
    .local v0, "that":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<*>;"
    iget-object v1, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    iget-object v2, v0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 61
    .end local v0    # "that":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 53
    .local p0, "this":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 65
    .local p0, "this":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
