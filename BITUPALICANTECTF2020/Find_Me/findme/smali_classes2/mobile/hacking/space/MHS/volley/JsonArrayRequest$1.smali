.class Lmobile/hacking/space/MHS/volley/JsonArrayRequest$1;
.super Lcom/android/volley/toolbox/JsonArrayRequest;
.source "JsonArrayRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->create()Lcom/android/volley/toolbox/JsonArrayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobile/hacking/space/MHS/volley/JsonArrayRequest;


# direct methods
.method constructor <init>(Lmobile/hacking/space/MHS/volley/JsonArrayRequest;ILjava/lang/String;Lorg/json/JSONArray;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .param p1, "this$0"    # Lmobile/hacking/space/MHS/volley/JsonArrayRequest;
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/json/JSONArray;
    .param p6, "x4"    # Lcom/android/volley/Response$ErrorListener;

    .line 63
    .local p5, "x3":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONArray;>;"
    iput-object p1, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/JsonArrayRequest;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonArrayRequest;-><init>(ILjava/lang/String;Lorg/json/JSONArray;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

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

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v0, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0}, Lcom/android/volley/toolbox/JsonArrayRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    invoke-super {p0}, Lcom/android/volley/toolbox/JsonArrayRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 87
    :cond_0
    iget-object v1, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/JsonArrayRequest;

    invoke-static {v1}, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->access$200(Lmobile/hacking/space/MHS/volley/JsonArrayRequest;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 88
    return-object v0
.end method

.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 75
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/JsonArrayRequest;

    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v1, v1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v0, v1}, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->access$002(Lmobile/hacking/space/MHS/volley/JsonArrayRequest;I)I

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/JsonArrayRequest;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

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
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/JsonArrayRequest;

    iget v1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v0, v1}, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->access$002(Lmobile/hacking/space/MHS/volley/JsonArrayRequest;I)I

    .line 69
    :cond_0
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/JsonArrayRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/JsonArrayRequest;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->allHeaders:Ljava/util/List;

    invoke-static {v0, v1}, Lmobile/hacking/space/MHS/volley/JsonArrayRequest;->access$102(Lmobile/hacking/space/MHS/volley/JsonArrayRequest;Ljava/util/List;)Ljava/util/List;

    .line 70
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/JsonArrayRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method
