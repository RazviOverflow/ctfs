.class public final Lcom/google/common/base/Objects$ToStringHelper;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private holderHead:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

.field private holderTail:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/google/common/base/Objects$1;)V

    iput-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->holderHead:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    .line 200
    iput-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->holderTail:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->omitNullValues:Z

    .line 207
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->className:Ljava/lang/String;

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/Objects$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/google/common/base/Objects$1;

    .line 197
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    .locals 2

    .line 406
    new-instance v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/google/common/base/Objects$1;)V

    .line 407
    .local v0, "valueHolder":Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    iget-object v1, p0, Lcom/google/common/base/Objects$ToStringHelper;->holderTail:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->next:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->holderTail:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    .line 408
    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 412
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 413
    .local v0, "valueHolder":Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    iput-object p1, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 414
    return-object p0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 418
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 419
    .local v0, "valueHolder":Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    iput-object p2, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 420
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    .line 421
    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;C)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 249
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;D)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 259
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;F)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 269
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 279
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 289
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 239
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(C)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # C

    .line 323
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(D)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # D

    .line 335
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(F)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # F

    .line 347
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(I)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # I

    .line 359
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(J)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # J

    .line 371
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 299
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(Z)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # Z

    .line 311
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public omitNullValues()Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->omitNullValues:Z

    .line 219
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 386
    iget-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->omitNullValues:Z

    .line 387
    .local v0, "omitNullValuesSnapshot":Z
    const-string v1, ""

    .line 388
    .local v1, "nextSeparator":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/google/common/base/Objects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 390
    .local v2, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/common/base/Objects$ToStringHelper;->holderHead:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    iget-object v3, v3, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->next:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    .local v3, "valueHolder":Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    :goto_0
    if-eqz v3, :cond_3

    .line 392
    if-eqz v0, :cond_0

    iget-object v4, v3, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 393
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v1, ", "

    .line 396
    iget-object v4, v3, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 397
    iget-object v4, v3, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    :cond_1
    iget-object v4, v3, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    :cond_2
    iget-object v3, v3, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->next:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    goto :goto_0

    .line 402
    .end local v3    # "valueHolder":Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    :cond_3
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
