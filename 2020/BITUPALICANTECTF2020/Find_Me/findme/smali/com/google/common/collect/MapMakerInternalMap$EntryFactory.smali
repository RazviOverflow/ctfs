.class abstract enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "EntryFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field static final EVICTABLE_MASK:I = 0x2

.field static final EXPIRABLE_MASK:I = 0x1

.field public static final enum STRONG:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum STRONG_EVICTABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum STRONG_EXPIRABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum STRONG_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum WEAK:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum WEAK_EVICTABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum WEAK_EXPIRABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum WEAK_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field static final factories:[[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 352
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$1;

    const/4 v1, 0x0

    const-string v2, "STRONG"

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 359
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$2;

    const/4 v2, 0x1

    const-string v3, "STRONG_EXPIRABLE"

    invoke-direct {v0, v3, v2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 374
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$3;

    const/4 v3, 0x2

    const-string v4, "STRONG_EVICTABLE"

    invoke-direct {v0, v4, v3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EVICTABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 389
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$4;

    const/4 v4, 0x3

    const-string v5, "STRONG_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v5, v4}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 406
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$5;

    const/4 v5, 0x4

    const-string v6, "WEAK"

    invoke-direct {v0, v6, v5}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 413
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$6;

    const/4 v6, 0x5

    const-string v7, "WEAK_EXPIRABLE"

    invoke-direct {v0, v7, v6}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 428
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$7;

    const/4 v7, 0x6

    const-string v8, "WEAK_EVICTABLE"

    invoke-direct {v0, v8, v7}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->WEAK_EVICTABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 443
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$8;

    const/4 v8, 0x7

    const-string v9, "WEAK_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v9, v8}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 351
    const/16 v9, 0x8

    new-array v9, v9, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    sget-object v10, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v10, v9, v1

    sget-object v11, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v11, v9, v2

    sget-object v12, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EVICTABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v12, v9, v3

    sget-object v13, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v13, v9, v4

    sget-object v14, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v14, v9, v5

    sget-object v15, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v15, v9, v6

    sget-object v6, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->WEAK_EVICTABLE:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v6, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->$VALUES:[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 470
    new-array v7, v4, [[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    new-array v8, v5, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v10, v8, v1

    aput-object v11, v8, v2

    aput-object v12, v8, v3

    aput-object v13, v8, v4

    aput-object v8, v7, v1

    new-array v8, v1, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v8, v7, v2

    new-array v5, v5, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v14, v5, v1

    aput-object v15, v5, v2

    aput-object v6, v5, v3

    aput-object v0, v5, v4

    aput-object v5, v7, v3

    sput-object v7, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->factories:[[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/MapMakerInternalMap$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/common/collect/MapMakerInternalMap$1;

    .line 351
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getFactory(Lcom/google/common/collect/MapMakerInternalMap$Strength;ZZ)Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
    .locals 3
    .param p0, "keyStrength"    # Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .param p1, "expireAfterWrite"    # Z
    .param p2, "evictsBySize"    # Z

    .line 478
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, p1

    .line 479
    .local v0, "flags":I
    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->factories:[[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 351
    const-class v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
    .locals 1

    .line 351
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->$VALUES:[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v0}, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    return-object v0
.end method


# virtual methods
.method copyEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 502
    .local p1, "segment":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p2, "original":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p3, "newNext":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method copyEvictableEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 521
    .local p1, "original":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p2, "newEntry":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getPreviousEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/collect/MapMakerInternalMap;->connectEvictables(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 522
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->connectEvictables(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 524
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->nullifyEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 525
    return-void
.end method

.method copyExpirableEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 509
    .local p1, "original":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p2, "newEntry":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getExpirationTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setExpirationTime(J)V

    .line 511
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 512
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 514
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->nullifyExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 515
    return-void
.end method

.method abstract newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method
