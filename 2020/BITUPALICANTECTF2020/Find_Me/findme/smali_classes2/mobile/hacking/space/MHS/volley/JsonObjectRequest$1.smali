.class Lmobile/hacking/space/MHS/volley/JsonObjectRequest$1;
.super Lcom/android/volley/toolbox/JsonObjectRequest;
.source "JsonObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->create()Lcom/android/volley/toolbox/JsonObjectRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobile/hacking/space/MHS/volley/JsonObjectRequest;


# direct methods
.method constructor <init>(Lmobile/hacking/space/MHS/volley/JsonObjectRequest;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .param p1, "this$0"    # Lmobile/hacking/space/MHS/volley/JsonObjectRequest;
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/json/JSONObject;
    .param p6, "x4"    # Lcom/android/volley/Response$ErrorListener;

    .line 65
    .local p5, "x3":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    iput-object p1, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/JsonObjectRequest;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
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

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v0, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0}, Lcom/android/volley/toolbox/JsonObjectRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-super {p0}, Lcom/android/volley/toolbox/JsonObjectRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 101
    :cond_0
    iget-object v1, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/JsonObjectRequest;

    invoke-static {v1}, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->access$200(Lmobile/hacking/space/MHS/volley/JsonObjectRequest;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 102
    return-object v0
.end method

.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 89
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/JsonObjectRequest;

    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v1, v1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v0, v1}, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->access$002(Lmobile/hacking/space/MHS/volley/JsonObjectRequest;I)I

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/JsonObjectRequest;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object v0

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/JsonObjectRequest;

    iget v1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v0, v1}, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->access$002(Lmobile/hacking/space/MHS/volley/JsonObjectRequest;I)I

    .line 72
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v3, "utf-8"

    .line 73
    invoke-static {v2, v3}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 74
    .local v0, "jsonString":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "jsonResponse":Lorg/json/JSONObject;
    iget-object v2, p0, Lmobile/hacking/space/MHS/volley/JsonObjectRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/JsonObjectRequest;

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->allHeaders:Ljava/util/List;

    invoke-static {v2, v3}, Lmobile/hacking/space/MHS/volley/JsonObjectRequest;->access$102(Lmobile/hacking/space/MHS/volley/JsonObjectRequest;Ljava/util/List;)Ljava/util/List;

    .line 77
    nop

    .line 78
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v2

    .line 77
    invoke-static {v1, v2}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 79
    .end local v0    # "jsonString":Ljava/lang/String;
    .end local v1    # "jsonResponse":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v1

    return-object v1

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/JsonObjectRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method
