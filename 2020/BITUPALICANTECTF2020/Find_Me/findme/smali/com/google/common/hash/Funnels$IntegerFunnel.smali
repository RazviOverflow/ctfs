.class final enum Lcom/google/common/hash/Funnels$IntegerFunnel;
.super Ljava/lang/Enum;
.source "Funnels.java"

# interfaces
.implements Lcom/google/common/hash/Funnel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IntegerFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/Funnels$IntegerFunnel;",
        ">;",
        "Lcom/google/common/hash/Funnel<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/hash/Funnels$IntegerFunnel;

.field public static final enum INSTANCE:Lcom/google/common/hash/Funnels$IntegerFunnel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 144
    new-instance v0, Lcom/google/common/hash/Funnels$IntegerFunnel;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/google/common/hash/Funnels$IntegerFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/Funnels$IntegerFunnel;->INSTANCE:Lcom/google/common/hash/Funnels$IntegerFunnel;

    .line 143
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/common/hash/Funnels$IntegerFunnel;

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/common/hash/Funnels$IntegerFunnel;->$VALUES:[Lcom/google/common/hash/Funnels$IntegerFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Funnels$IntegerFunnel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 143
    const-class v0, Lcom/google/common/hash/Funnels$IntegerFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/Funnels$IntegerFunnel;

    return-object v0
.end method

.method public static values()[Lcom/google/common/hash/Funnels$IntegerFunnel;
    .locals 1

    .line 143
    sget-object v0, Lcom/google/common/hash/Funnels$IntegerFunnel;->$VALUES:[Lcom/google/common/hash/Funnels$IntegerFunnel;

    invoke-virtual {v0}, [Lcom/google/common/hash/Funnels$IntegerFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Funnels$IntegerFunnel;

    return-object v0
.end method


# virtual methods
.method public funnel(Ljava/lang/Integer;Lcom/google/common/hash/PrimitiveSink;)V
    .locals 1
    .param p1, "from"    # Ljava/lang/Integer;
    .param p2, "into"    # Lcom/google/common/hash/PrimitiveSink;

    .line 147
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/google/common/hash/PrimitiveSink;->putInt(I)Lcom/google/common/hash/PrimitiveSink;

    .line 148
    return-void
.end method

.method public bridge synthetic funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/google/common/hash/PrimitiveSink;

    .line 143
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0, p2}, Lcom/google/common/hash/Funnels$IntegerFunnel;->funnel(Ljava/lang/Integer;Lcom/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 151
    const-string v0, "Funnels.integerFunnel()"

    return-object v0
.end method
