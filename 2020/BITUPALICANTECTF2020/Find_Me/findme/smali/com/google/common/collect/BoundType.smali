.class public abstract enum Lcom/google/common/collect/BoundType;
.super Ljava/lang/Enum;
.source "BoundType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/BoundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/BoundType;

.field public static final enum CLOSED:Lcom/google/common/collect/BoundType;

.field public static final enum OPEN:Lcom/google/common/collect/BoundType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lcom/google/common/collect/BoundType$1;

    const/4 v1, 0x0

    const-string v2, "OPEN"

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/BoundType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    .line 40
    new-instance v0, Lcom/google/common/collect/BoundType$2;

    const/4 v2, 0x1

    const-string v3, "CLOSED"

    invoke-direct {v0, v3, v2}, Lcom/google/common/collect/BoundType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    .line 26
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/collect/BoundType;

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/google/common/collect/BoundType;->$VALUES:[Lcom/google/common/collect/BoundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/BoundType$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/common/collect/BoundType$1;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/BoundType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static forBoolean(Z)Lcom/google/common/collect/BoundType;
    .locals 1
    .param p0, "inclusive"    # Z

    .line 51
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/BoundType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/google/common/collect/BoundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/BoundType;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/common/collect/BoundType;->$VALUES:[Lcom/google/common/collect/BoundType;

    invoke-virtual {v0}, [Lcom/google/common/collect/BoundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/BoundType;

    return-object v0
.end method


# virtual methods
.method abstract flip()Lcom/google/common/collect/BoundType;
.end method
