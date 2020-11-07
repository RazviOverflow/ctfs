.class final enum Lcom/google/common/primitives/Floats$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "Floats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Floats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LexicographicalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/primitives/Floats$LexicographicalComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "[F>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/primitives/Floats$LexicographicalComparator;

.field public static final enum INSTANCE:Lcom/google/common/primitives/Floats$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 386
    new-instance v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/google/common/primitives/Floats$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Floats$LexicographicalComparator;

    .line 385
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/common/primitives/Floats$LexicographicalComparator;

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/common/primitives/Floats$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Floats$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 385
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/Floats$LexicographicalComparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 385
    const-class v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/Floats$LexicographicalComparator;
    .locals 1

    .line 385
    sget-object v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Floats$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/Floats$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/Floats$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 385
    move-object v0, p1

    check-cast v0, [F

    move-object v1, p2

    check-cast v1, [F

    invoke-virtual {p0, v0, v1}, Lcom/google/common/primitives/Floats$LexicographicalComparator;->compare([F[F)I

    move-result v0

    return v0
.end method

.method public compare([F[F)I
    .locals 4
    .param p1, "left"    # [F
    .param p2, "right"    # [F

    .line 390
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 391
    .local v0, "minLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 392
    aget v2, p1, v1

    aget v3, p2, v1

    invoke-static {v2, v3}, Lcom/google/common/primitives/Floats;->compare(FF)I

    move-result v2

    .line 393
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 394
    return v2

    .line 391
    .end local v2    # "result":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v1    # "i":I
    :cond_1
    array-length v1, p1

    array-length v2, p2

    sub-int/2addr v1, v2

    return v1
.end method
