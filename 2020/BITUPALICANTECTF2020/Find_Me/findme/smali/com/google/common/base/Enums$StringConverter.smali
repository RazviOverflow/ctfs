.class final Lcom/google/common/base/Enums$StringConverter;
.super Lcom/google/common/base/Converter;
.source "Enums.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Enums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Lcom/google/common/base/Converter<",
        "Ljava/lang/String;",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/google/common/base/Enums$StringConverter;, "Lcom/google/common/base/Enums$StringConverter<TT;>;"
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    .line 150
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/base/Enums$StringConverter;->enumClass:Ljava/lang/Class;

    .line 151
    return-void
.end method


# virtual methods
.method protected bridge synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 144
    .local p0, "this":Lcom/google/common/base/Enums$StringConverter;, "Lcom/google/common/base/Enums$StringConverter<TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Enums$StringConverter;->doBackward(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doBackward(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lcom/google/common/base/Enums$StringConverter;, "Lcom/google/common/base/Enums$StringConverter<TT;>;"
    .local p1, "enumValue":Ljava/lang/Enum;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doForward(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcom/google/common/base/Enums$StringConverter;, "Lcom/google/common/base/Enums$StringConverter<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Enums$StringConverter;->enumClass:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 144
    .local p0, "this":Lcom/google/common/base/Enums$StringConverter;, "Lcom/google/common/base/Enums$StringConverter<TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Enums$StringConverter;->doForward(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 165
    .local p0, "this":Lcom/google/common/base/Enums$StringConverter;, "Lcom/google/common/base/Enums$StringConverter<TT;>;"
    instance-of v0, p1, Lcom/google/common/base/Enums$StringConverter;

    if-eqz v0, :cond_0

    .line 166
    move-object v0, p1

    check-cast v0, Lcom/google/common/base/Enums$StringConverter;

    .line 167
    .local v0, "that":Lcom/google/common/base/Enums$StringConverter;, "Lcom/google/common/base/Enums$StringConverter<*>;"
    iget-object v1, p0, Lcom/google/common/base/Enums$StringConverter;->enumClass:Ljava/lang/Class;

    iget-object v2, v0, Lcom/google/common/base/Enums$StringConverter;->enumClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 169
    .end local v0    # "that":Lcom/google/common/base/Enums$StringConverter;, "Lcom/google/common/base/Enums$StringConverter<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 174
    .local p0, "this":Lcom/google/common/base/Enums$StringConverter;, "Lcom/google/common/base/Enums$StringConverter<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Enums$StringConverter;->enumClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 179
    .local p0, "this":Lcom/google/common/base/Enums$StringConverter;, "Lcom/google/common/base/Enums$StringConverter<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enums.stringConverter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/base/Enums$StringConverter;->enumClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".class)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
