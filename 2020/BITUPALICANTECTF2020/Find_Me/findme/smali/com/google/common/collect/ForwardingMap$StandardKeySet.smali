.class public Lcom/google/common/collect/ForwardingMap$StandardKeySet;
.super Lcom/google/common/collect/Maps$KeySet;
.source "ForwardingMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$KeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ForwardingMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingMap;)V
    .locals 0

    .line 198
    .local p0, "this":Lcom/google/common/collect/ForwardingMap$StandardKeySet;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>.StandardKeySet;"
    iput-object p1, p0, Lcom/google/common/collect/ForwardingMap$StandardKeySet;->this$0:Lcom/google/common/collect/ForwardingMap;

    .line 199
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 200
    return-void
.end method
