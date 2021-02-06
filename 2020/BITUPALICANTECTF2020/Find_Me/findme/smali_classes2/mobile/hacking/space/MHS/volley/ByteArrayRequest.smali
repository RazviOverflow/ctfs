.class public Lmobile/hacking/space/MHS/volley/ByteArrayRequest;
.super Ljava/lang/Object;
.source "ByteArrayRequest.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener<",
        "[B>;"
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

.field private mJsonRequest:[B

.field private mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmobile/hacking/space/MHS/volley/ResponseListener<",
            "[B>;"
        }
    .end annotation
.end field

.field private mMethod:I

.field private mRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "[B>;"
        }
    .end annotation
.end field

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
            "[B>;",
            "Lmobile/hacking/space/MHS/volley/ResponseErrorListener;",
            ")V"
        }
    .end annotation

    .line 38
    .local p3, "listener":Lmobile/hacking/space/MHS/volley/ResponseListener;, "Lmobile/hacking/space/MHS/volley/ResponseListener<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mHeaders:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mResponseHeaders:Ljava/util/List;

    .line 39
    iput p1, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mMethod:I

    .line 40
    iput-object p2, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mUrl:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;

    .line 42
    iput-object p4, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mErrorListener:Lmobile/hacking/space/MHS/volley/ResponseErrorListener;

    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BLmobile/hacking/space/MHS/volley/ResponseListener;Lmobile/hacking/space/MHS/volley/ResponseErrorListener;)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "request"    # [B
    .param p5, "errorListener"    # Lmobile/hacking/space/MHS/volley/ResponseErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[B",
            "Lmobile/hacking/space/MHS/volley/ResponseListener<",
            "[B>;",
            "Lmobile/hacking/space/MHS/volley/ResponseErrorListener;",
            ")V"
        }
    .end annotation

    .line 30
    .local p4, "listener":Lmobile/hacking/space/MHS/volley/ResponseListener;, "Lmobile/hacking/space/MHS/volley/ResponseListener<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mHeaders:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mResponseHeaders:Ljava/util/List;

    .line 31
    iput p1, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mMethod:I

    .line 32
    iput-object p2, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mUrl:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;

    .line 34
    iput-object p5, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mErrorListener:Lmobile/hacking/space/MHS/volley/ResponseErrorListener;

    .line 35
    iput-object p3, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mJsonRequest:[B

    .line 36
    return-void
.end method

.method static synthetic access$002(Lmobile/hacking/space/MHS/volley/ByteArrayRequest;I)I
    .locals 0
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/ByteArrayRequest;
    .param p1, "x1"    # I

    .line 18
    iput p1, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mStatusCode:I

    return p1
.end method

.method static synthetic access$102(Lmobile/hacking/space/MHS/volley/ByteArrayRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/ByteArrayRequest;
    .param p1, "x1"    # Ljava/util/List;

    .line 18
    iput-object p1, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mResponseHeaders:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lmobile/hacking/space/MHS/volley/ByteArrayRequest;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/ByteArrayRequest;

    .line 18
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lmobile/hacking/space/MHS/volley/ByteArrayRequest;)Lmobile/hacking/space/MHS/volley/ResponseListener;
    .locals 1
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/ByteArrayRequest;

    .line 18
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;

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

    .line 50
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method public create()Lcom/android/volley/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Request<",
            "[B>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest$1;

    iget v1, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mMethod:I

    iget-object v2, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p0}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest$1;-><init>(Lmobile/hacking/space/MHS/volley/ByteArrayRequest;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mRequest:Lcom/android/volley/Request;

    .line 104
    return-object v0
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

    .line 46
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mHeaders:Ljava/util/HashMap;

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

    .line 58
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mResponseHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 54
    iget v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mStatusCode:I

    return v0
.end method

.method public getVolleyRequest()Lcom/android/volley/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Request<",
            "[B>;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mRequest:Lcom/android/volley/Request;

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->create()Lcom/android/volley/Request;

    move-result-object v0

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mRequest:Lcom/android/volley/Request;

    .line 127
    :cond_0
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mRequest:Lcom/android/volley/Request;

    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    const v2, 0xea60

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 132
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mRequest:Lcom/android/volley/Request;

    return-object v0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 118
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mErrorListener:Lmobile/hacking/space/MHS/volley/ResponseErrorListener;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->getStatusCode()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lmobile/hacking/space/MHS/volley/ResponseErrorListener;->onErrorResponse(ILcom/android/volley/VolleyError;)V

    .line 121
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->onResponse([B)V

    return-void
.end method

.method public onResponse([B)V
    .locals 4
    .param p1, "response"    # [B

    .line 111
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->getStatusCode()I

    move-result v1

    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->getResponseHeaders()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, p1, v2, v3}, Lmobile/hacking/space/MHS/volley/ResponseListener;->onResponse(ILjava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method
