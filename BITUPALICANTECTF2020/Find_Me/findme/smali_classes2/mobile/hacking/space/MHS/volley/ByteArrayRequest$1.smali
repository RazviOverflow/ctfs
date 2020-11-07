.class Lmobile/hacking/space/MHS/volley/ByteArrayRequest$1;
.super Lcom/android/volley/Request;
.source "ByteArrayRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->create()Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobile/hacking/space/MHS/volley/ByteArrayRequest;


# direct methods
.method constructor <init>(Lmobile/hacking/space/MHS/volley/ByteArrayRequest;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .param p1, "this$0"    # Lmobile/hacking/space/MHS/volley/ByteArrayRequest;
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lcom/android/volley/Response$ErrorListener;

    .line 62
    iput-object p1, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/ByteArrayRequest;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest$1;->deliverResponse([B)V

    return-void
.end method

.method protected deliverResponse([B)V
    .locals 4
    .param p1, "response"    # [B

    .line 99
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/ByteArrayRequest;

    invoke-static {v0}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->access$300(Lmobile/hacking/space/MHS/volley/ByteArrayRequest;)Lmobile/hacking/space/MHS/volley/ResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/ByteArrayRequest;

    invoke-static {v0}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->access$300(Lmobile/hacking/space/MHS/volley/ByteArrayRequest;)Lmobile/hacking/space/MHS/volley/ResponseListener;

    move-result-object v0

    iget-object v1, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/ByteArrayRequest;

    invoke-virtual {v1}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->getStatusCode()I

    move-result v1

    iget-object v2, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/ByteArrayRequest;

    invoke-virtual {v2}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->getResponseHeaders()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, p1, v2, v3}, Lmobile/hacking/space/MHS/volley/ResponseListener;->onResponse(ILjava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v0, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 94
    :cond_0
    iget-object v1, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/ByteArrayRequest;

    invoke-static {v1}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->access$200(Lmobile/hacking/space/MHS/volley/ByteArrayRequest;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 95
    return-object v0
.end method

.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 82
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/ByteArrayRequest;

    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v1, v1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v0, v1}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->access$002(Lmobile/hacking/space/MHS/volley/ByteArrayRequest;I)I

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object v0

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 2
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "[B>;"
        }
    .end annotation

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/ByteArrayRequest;

    iget v1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v0, v1}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->access$002(Lmobile/hacking/space/MHS/volley/ByteArrayRequest;I)I

    .line 70
    :try_start_0
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/ByteArrayRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/ByteArrayRequest;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->allHeaders:Ljava/util/List;

    invoke-static {v0, v1}, Lmobile/hacking/space/MHS/volley/ByteArrayRequest;->access$102(Lmobile/hacking/space/MHS/volley/ByteArrayRequest;Ljava/util/List;)Ljava/util/List;

    .line 71
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 72
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v1

    return-object v1

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
