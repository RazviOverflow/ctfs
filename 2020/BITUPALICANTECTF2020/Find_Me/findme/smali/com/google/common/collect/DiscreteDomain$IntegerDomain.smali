.class final Lcom/google/common/collect/DiscreteDomain$IntegerDomain;
.super Lcom/google/common/collect/DiscreteDomain;
.source "DiscreteDomain.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DiscreteDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntegerDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;-><init>()V

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/google/common/collect/DiscreteDomain;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/collect/DiscreteDomain$IntegerDomain;
    .locals 1

    .line 57
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 84
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 2
    .param p1, "x0"    # Ljava/lang/Comparable;
    .param p2, "x1"    # Ljava/lang/Comparable;

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->distance(Ljava/lang/Integer;Ljava/lang/Integer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public distance(Ljava/lang/Integer;Ljava/lang/Integer;)J
    .locals 4
    .param p1, "start"    # Ljava/lang/Integer;
    .param p2, "end"    # Ljava/lang/Integer;

    .line 72
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic maxValue()Ljava/lang/Comparable;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->maxValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public maxValue()Ljava/lang/Integer;
    .locals 1

    .line 80
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minValue()Ljava/lang/Comparable;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->minValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public minValue()Ljava/lang/Integer;
    .locals 1

    .line 76
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Comparable;

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->next(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    .local v0, "i":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public bridge synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Comparable;

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->previous(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public previous(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 68
    .local v0, "i":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "DiscreteDomain.integers()"

    return-object v0
.end method
