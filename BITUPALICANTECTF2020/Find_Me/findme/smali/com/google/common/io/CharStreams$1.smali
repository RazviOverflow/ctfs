.class final Lcom/google/common/io/CharStreams$1;
.super Ljava/lang/Object;
.source "CharStreams.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/CharStreams;->join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/google/common/io/InputSupplier<",
        "+",
        "Ljava/io/Reader;",
        ">;",
        "Lcom/google/common/io/CharSource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/CharSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/Reader;",
            ">;)",
            "Lcom/google/common/io/CharSource;"
        }
    .end annotation

    .line 378
    .local p1, "input":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/Reader;>;"
    invoke-static {p1}, Lcom/google/common/io/CharStreams;->asCharSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 375
    move-object v0, p1

    check-cast v0, Lcom/google/common/io/InputSupplier;

    invoke-virtual {p0, v0}, Lcom/google/common/io/CharStreams$1;->apply(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method
