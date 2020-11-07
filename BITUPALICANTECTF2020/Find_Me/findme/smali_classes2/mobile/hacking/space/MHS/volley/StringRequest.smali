.class public Lmobile/hacking/space/MHS/volley/StringRequest;
.super Ljava/lang/Object;
.source "StringRequest.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mCookies:Ljava/lang/String;

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

.field private mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmobile/hacking/space/MHS/volley/ResponseListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:I

.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/android/volley/toolbox/StringRequest;

.field private mRequestBody:Ljava/lang/String;

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
            "Ljava/lang/String;",
            ">;",
            "Lmobile/hacking/space/MHS/volley/ResponseErrorListener;",
            ")V"
        }
    .end annotation

    .line 34
    .local p3, "listener":Lmobile/hacking/space/MHS/volley/ResponseListener;, "Lmobile/hacking/space/MHS/volley/ResponseListener<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mHeaders:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mResponseHeaders:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mParams:Ljava/util/Map;

    .line 35
    iput p1, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mMethod:I

    .line 36
    iput-object p2, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mUrl:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;

    .line 38
    iput-object p4, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mErrorListener:Lmobile/hacking/space/MHS/volley/ResponseErrorListener;

    .line 40
    return-void
.end method

.method static synthetic access$002(Lmobile/hacking/space/MHS/volley/StringRequest;I)I
    .locals 0
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/StringRequest;
    .param p1, "x1"    # I

    .line 20
    iput p1, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mStatusCode:I

    return p1
.end method

.method static synthetic access$102(Lmobile/hacking/space/MHS/volley/StringRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/StringRequest;
    .param p1, "x1"    # Ljava/util/List;

    .line 20
    iput-object p1, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mResponseHeaders:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lmobile/hacking/space/MHS/volley/StringRequest;)Lcom/android/volley/toolbox/StringRequest;
    .locals 1
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/StringRequest;

    .line 20
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mRequest:Lcom/android/volley/toolbox/StringRequest;

    return-object v0
.end method

.method static synthetic access$302(Lmobile/hacking/space/MHS/volley/StringRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/StringRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mCookies:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lmobile/hacking/space/MHS/volley/StringRequest;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/StringRequest;

    .line 20
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mParams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lmobile/hacking/space/MHS/volley/StringRequest;Ljava/util/Map;Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/StringRequest;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1, p2}, Lmobile/hacking/space/MHS/volley/StringRequest;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lmobile/hacking/space/MHS/volley/StringRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/StringRequest;

    .line 20
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mRequestBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lmobile/hacking/space/MHS/volley/StringRequest;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lmobile/hacking/space/MHS/volley/StringRequest;

    .line 20
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 5
    .param p2, "paramsEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 145
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "encodedParams":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoding not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
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

    .line 47
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method public addParams(Ljava/util/Map;)V
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
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 52
    return-void
.end method

.method public create()Lcom/android/volley/toolbox/StringRequest;
    .locals 7

    .line 62
    new-instance v6, Lmobile/hacking/space/MHS/volley/StringRequest$1;

    iget v2, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mMethod:I

    iget-object v3, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mUrl:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lmobile/hacking/space/MHS/volley/StringRequest$1;-><init>(Lmobile/hacking/space/MHS/volley/StringRequest;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v6, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mRequest:Lcom/android/volley/toolbox/StringRequest;

    .line 114
    return-object v6
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

    .line 43
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mHeaders:Ljava/util/HashMap;

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
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mResponseHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 55
    iget v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mStatusCode:I

    return v0
.end method

.method public getVolleyRequest()Lcom/android/volley/toolbox/StringRequest;
    .locals 1

    .line 134
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mRequest:Lcom/android/volley/toolbox/StringRequest;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/StringRequest;->create()Lcom/android/volley/toolbox/StringRequest;

    move-result-object v0

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mRequest:Lcom/android/volley/toolbox/StringRequest;

    .line 137
    :cond_0
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mRequest:Lcom/android/volley/toolbox/StringRequest;

    return-object v0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 121
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mErrorListener:Lmobile/hacking/space/MHS/volley/ResponseErrorListener;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/StringRequest;->getStatusCode()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lmobile/hacking/space/MHS/volley/ResponseErrorListener;->onErrorResponse(ILcom/android/volley/VolleyError;)V

    .line 124
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmobile/hacking/space/MHS/volley/StringRequest;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mListener:Lmobile/hacking/space/MHS/volley/ResponseListener;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/StringRequest;->getStatusCode()I

    move-result v1

    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/StringRequest;->getResponseHeaders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mCookies:Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2, v3}, Lmobile/hacking/space/MHS/volley/ResponseListener;->onResponse(ILjava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public setRequestBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestBody"    # Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lmobile/hacking/space/MHS/volley/StringRequest;->mRequestBody:Ljava/lang/String;

    .line 142
    return-void
.end method
