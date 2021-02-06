.class public Lmobile/hacking/space/MHS/volley/JsonArrayRequest;
.super Ljava/lang/Object;
.source "JsonArrayRequest.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field private mErrorListener:Lmobile/hacking/space/MHS/volley/ResponseErrorListener;

.field private mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mJsonRequest:Lorg/json/JSONArray;

.field private mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmobile/hacking/space/MHS/volley/ResponseListener<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:I

.field private mRequest:Lcom/android/volley/toolbox/JsonArrayRequest;

.field private mResponseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCode:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lmobile/hacking/space/MHS/volley/ResponseListener;Lmobile/hacking/space/MHS/volley/ResponseErrorListener;)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lmobile/hacking/space/MHS/volley/ResponseErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lmobile/hacking/space/MHS/volley/ResponseListener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lmobile/hacking/space/MHS/volley/ResponseErrorListener;",
            ")V"
        }
    .end annotation

    .line 30
    .local p3, "listener":Lmobile/hacking/space/MHS/volley/ResponseListener;, "Lmobile/hacking/space/MHS/volley/ResponseListener<Lorg/json/JSONArray;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mResponseHeaders:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mHeaders:Ljava/util/HashMap;

    .line 31
    iput p1, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mMethod:I

    .line 32
    iput-object p2, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mUrl:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;

    .line 34
    iput-object p4, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mErrorListener:Lmobile/hacking/space/MHS/volley/ResponseErrorListener;

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONArray;Lmobile/hacking/space/MHS/volley/ResponseListener;Lmobile/hacking/space/MHS/volley/ResponseErrorListener;)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "jsonRequest"    # Lorg/json/JSONArray;
    .param p5, "errorListener"    # Lmobile/hacking/space/MHS/volley/ResponseErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lmobile/hacking/space/MHS/volley/ResponseListener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lmobile/hacking/space/MHS/volley/ResponseErrorListener;",
            ")V"
        }
    .end annotation

    .line 38
    .local p4, "listener":Lmobile/hacking/space/MHS/volley/ResponseListener;, "Lmobile/hacking/space/MHS/volley/ResponseListener<Lorg/json/JSONArray;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mResponseHeaders:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mHeaders:Ljava/util/HashMap;

    .line 39
    iput p1, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mMethod:I

    .line 40
    iput-object p2, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mUrl:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;

    .line 42
    iput-object p5, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mErrorListener:Lmobile/hacking/space/MHS/volley/ResponseErrorListener;

    .line 43
    iput-object p3, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mJsonRequest:Lorg/json/JSONArray;

    .line 44
    return-void
.end method

.method static synthetic access$002(Lmobile/hacking/space/MHS/volley/JsonArrayRequest;I)I
    .locals 0
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/JsonArrayRequest;
    .param p1, "x1"    # I

    .line 17
    iput p1, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mStatusCode:I

    return p1
.end method

.method static synthetic access$102(Lmobile/hacking/space/MHS/volley/JsonArrayRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/JsonArrayRequest;
    .param p1, "x1"    # Ljava/util/List;

    .line 17
    iput-object p1, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mResponseHeaders:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lmobile/hacking/space/MHS/volley/JsonArrayRequest;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/JsonArrayRequest;

    .line 17
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mHeaders:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public addHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 52
    return-void
.end method

.method public create()Lcom/android/volley/toolbox/JsonArrayRequest;
    .locals 8

    .line 63
    new-instance v7, Lmobile/hacking/space/MHS/volley/JsonArrayRequest$1;

    iget v2, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mMethod:I

    iget-object v3, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mJsonRequest:Lorg/json/JSONArray;

    move-object v0, v7

    move-object v1, p0

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lmobile/hacking/space/MHS/volley/JsonArrayRequest$1;-><init>(Lmobile/hacking/space/MHS/volley/JsonArrayRequest;ILjava/lang/String;Lorg/json/JSONArray;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v7, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mRequest:Lcom/android/volley/toolbox/JsonArrayRequest;

    .line 91
    return-object v7
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mResponseHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 55
    iget v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mStatusCode:I

    return v0
.end method

.method public getVolleyRequest()Lcom/android/volley/toolbox/JsonArrayRequest;
    .locals 1

    .line 109
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mRequest:Lcom/android/volley/toolbox/JsonArrayRequest;

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->create()Lcom/android/volley/toolbox/JsonArrayRequest;

    move-result-object v0

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mRequest:Lcom/android/volley/toolbox/JsonArrayRequest;

    .line 112
    :cond_0
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mRequest:Lcom/android/volley/toolbox/JsonArrayRequest;

    return-object v0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 96
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mErrorListener:Lmobile/hacking/space/MHS/volley/ResponseErrorListener;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->getStatusCode()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lmobile/hacking/space/MHS/volley/ResponseErrorListener;->onErrorResponse(ILcom/android/volley/VolleyError;)V

    .line 99
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->onResponse(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "response"    # Lorg/json/JSONArray;

    .line 103
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->getStatusCode()I

    move-result v1

    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->getResponseHeaders()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, p1, v2, v3}, Lmobile/hacking/space/MHS/volley/ResponseListener;->onResponse(ILjava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method
