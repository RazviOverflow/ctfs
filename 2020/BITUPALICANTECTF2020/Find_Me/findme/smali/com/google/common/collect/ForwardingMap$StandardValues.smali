.class public Lcom/google/common/collect/ForwardingMap$StandardValues;
.super Lcom/google/common/collect/Maps$Values;
.source "ForwardingMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$Values<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ForwardingMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingMap;)V
    .locals 0

    .line 228
    .local p0, "this":Lcom/google/common/collect/ForwardingMap$StandardValues;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>.StandardValues;"
    iput-object p1, p0, Lcom/google/common/collect/ForwardingMap$StandardValues;->this$0:Lcom/google/common/collect/ForwardingMap;

    .line 229
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    .line 230
    return-void
.end method
