.class final Lcom/google/common/collect/NullsFirstOrdering;
.super Lcom/google/common/collect/Ordering;
.source "NullsFirstOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Ordering<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final ordering:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Ordering<",
            "-TT;>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lcom/google/common/collect/NullsFirstOrdering;, "Lcom/google/common/collect/NullsFirstOrdering<TT;>;"
    .local p1, "ordering":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<-TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/common/collect/NullsFirstOrdering;->ordering:Lcom/google/common/collect/Ordering;

    .line 32
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
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
            "(TT;TT;)I"
        }
    .end annotation

    .line 35
    .local p0, "this":Lcom/google/common/collect/NullsFirstOrdering;, "Lcom/google/common/collect/NullsFirstOrdering<TT;>;"
    .local p1, "left":Ljava/lang/Object;, "TT;"
    .local p2, "right":Ljava/lang/Object;, "TT;"
    if-ne p1, p2, :cond_0

    .line 36
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    if-nez p1, :cond_1

    .line 39
    const/4 v0, -0x1

    return v0

    .line 41
    :cond_1
    if-nez p2, :cond_2

    .line 42
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/NullsFirstOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    .local p0, "this":Lcom/google/common/collect/NullsFirstOrdering;, "Lcom/google/common/collect/NullsFirstOrdering<TT;>;"
    if-ne p1, p0, :cond_0

    .line 63
    const/4 v0, 0x1

    return v0

    .line 65
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/NullsFirstOrdering;

    if-eqz v0, :cond_1

    .line 66
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/NullsFirstOrdering;

    .line 67
    .local v0, "that":Lcom/google/common/collect/NullsFirstOrdering;, "Lcom/google/common/collect/NullsFirstOrdering<*>;"
    iget-object v1, p0, Lcom/google/common/collect/NullsFirstOrdering;->ordering:Lcom/google/common/collect/Ordering;

    iget-object v2, v0, Lcom/google/common/collect/NullsFirstOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 69
    .end local v0    # "that":Lcom/google/common/collect/NullsFirstOrdering;, "Lcom/google/common/collect/NullsFirstOrdering<*>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 73
    .local p0, "this":Lcom/google/common/collect/NullsFirstOrdering;, "Lcom/google/common/collect/NullsFirstOrdering<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/NullsFirstOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x39153a74

    xor-int/2addr v0, v1

    return v0
.end method

.method public nullsFirst()Lcom/google/common/collect/Ordering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/google/common/collect/NullsFirstOrdering;, "Lcom/google/common/collect/NullsFirstOrdering<TT;>;"
    return-object p0
.end method

.method public nullsLast()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/google/common/collect/NullsFirstOrdering;, "Lcom/google/common/collect/NullsFirstOrdering<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/NullsFirstOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->nullsLast()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/google/common/collect/NullsFirstOrdering;, "Lcom/google/common/collect/NullsFirstOrdering<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/NullsFirstOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->nullsLast()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    .local p0, "this":Lcom/google/common/collect/NullsFirstOrdering;, "Lcom/google/common/collect/NullsFirstOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/NullsFirstOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".nullsFirst()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
