.class public Lmobile/hacking/space/MHS/volley/JsonObjectRequest;
.super Ljava/lang/Object;
.source "JsonObjectRequest.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
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

.field private mJsonRequest:Lorg/json/JSONObject;

.field private mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmobile/hacking/space/MHS/volley/ResponseListener<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:I

.field private mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

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
            "Lorg/json/JSONObject;",
            ">;",
            "Lmobile/hacking/space/MHS/volley/ResponseErrorListener;",
            ")V"
        }
    .end annotation

    .line 32
    .local p3, "listener":Lmobile/hacking/space/MHS/volley/ResponseListener;, "Lmobile/hacking/space/MHS/volley/ResponseListener<Lorg/json/JSONObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mResponseHeaders:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mHeaders:Ljava/util/HashMap;

    .line 33
    iput p1, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mMethod:I

    .line 34
    iput-object p2, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mUrl:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;

    .line 36
    iput-object p4, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mErrorListener:Lmobile/hacking/space/MHS/volley/ResponseErrorListener;

    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lmobile/hacking/space/MHS/volley/ResponseListener;Lmobile/hacking/space/MHS/volley/ResponseErrorListener;)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "jsonRequest"    # Lorg/json/JSONObject;
    .param p5, "errorListener"    # Lmobile/hacking/space/MHS/volley/ResponseErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lmobile/hacking/space/MHS/volley/ResponseListener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lmobile/hacking/space/MHS/volley/ResponseErrorListener;",
            ")V"
        }
    .end annotation

    .line 40
    .local p4, "listener":Lmobile/hacking/space/MHS/volley/ResponseListener;, "Lmobile/hacking/space/MHS/volley/ResponseListener<Lorg/json/JSONObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mResponseHeaders:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mHeaders:Ljava/util/HashMap;

    .line 41
    iput p1, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mMethod:I

    .line 42
    iput-object p2, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mUrl:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;

    .line 44
    iput-object p5, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mErrorListener:Lmobile/hacking/space/MHS/volley/ResponseErrorListener;

    .line 45
    iput-object p3, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mJsonRequest:Lorg/json/JSONObject;

    .line 46
    return-void
.end method

.method static synthetic access$002(Lmobile/hacking/space/MHS/volley/JsonObjectRequest;I)I
    .locals 0
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/JsonObjectRequest;
    .param p1, "x1"    # I

    .line 19
    iput p1, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mStatusCode:I

    return p1
.end method

.method static synthetic access$102(Lmobile/hacking/space/MHS/volley/JsonObjectRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/JsonObjectRequest;
    .param p1, "x1"    # Ljava/util/List;

    .line 19
    iput-object p1, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mResponseHeaders:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lmobile/hacking/space/MHS/volley/JsonObjectRequest;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/JsonObjectRequest;

    .line 19
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mHeaders:Ljava/util/HashMap;

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

    .line 53
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 54
    return-void
.end method

.method public create()Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 8

    .line 65
    new-instance v7, Lmobile/hacking/space/MHS/volley/JsonObjectRequest$1;

    iget v2, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mMethod:I

    iget-object v3, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mJsonRequest:Lorg/json/JSONObject;

    move-object v0, v7

    move-object v1, p0

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lmobile/hacking/space/MHS/volley/JsonObjectRequest$1;-><init>(Lmobile/hacking/space/MHS/volley/JsonObjectRequest;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v7, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    .line 105
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

    .line 49
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mHeaders:Ljava/util/HashMap;

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

    .line 61
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mResponseHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 57
    iget v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mStatusCode:I

    return v0
.end method

.method public getVolleyRequest()Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5

    .line 123
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->create()Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    .line 126
    :cond_0
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    const v2, 0xea60

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 131
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    return-object v0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 110
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mErrorListener:Lmobile/hacking/space/MHS/volley/ResponseErrorListener;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->getStatusCode()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lmobile/hacking/space/MHS/volley/ResponseErrorListener;->onErrorResponse(ILcom/android/volley/VolleyError;)V

    .line 113
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "response"    # Lorg/json/JSONObject;

    .line 117
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->getStatusCode()I

    move-result v1

    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->getResponseHeaders()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, p1, v2, v3}, Lmobile/hacking/space/MHS/volley/ResponseListener;->onResponse(ILjava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method
