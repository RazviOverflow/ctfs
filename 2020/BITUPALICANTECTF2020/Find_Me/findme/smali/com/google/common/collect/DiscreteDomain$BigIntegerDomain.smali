.class final Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;
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
    name = "BigIntegerDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain<",
        "Ljava/math/BigInteger;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

.field private static final MAX_LONG:Ljava/math/BigInteger;

.field private static final MIN_LONG:Ljava/math/BigInteger;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 160
    new-instance v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;-><init>()V

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

    .line 162
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->MIN_LONG:Ljava/math/BigInteger;

    .line 164
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->MAX_LONG:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/google/common/collect/DiscreteDomain;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;
    .locals 1

    .line 158
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 180
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 2
    .param p1, "x0"    # Ljava/lang/Comparable;
    .param p2, "x1"    # Ljava/lang/Comparable;

    .line 158
    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    move-object v1, p2

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->distance(Ljava/math/BigInteger;Ljava/math/BigInteger;)J

    move-result-wide v0

    return-wide v0
.end method

.method public distance(Ljava/math/BigInteger;Ljava/math/BigInteger;)J
    .locals 2
    .param p1, "start"    # Ljava/math/BigInteger;
    .param p2, "end"    # Ljava/math/BigInteger;

    .line 176
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->MIN_LONG:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->MAX_LONG:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Comparable;

    .line 158
    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->next(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 168
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Comparable;

    .line 158
    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->previous(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public previous(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 172
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 185
    const-string v0, "DiscreteDomain.bigIntegers()"

    return-object v0
.end method
