.class Lmobile/hacking/space/MHS/volley/StringRequest$1;
.super Lcom/android/volley/toolbox/StringRequest;
.source "StringRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobile/hacking/space/MHS/volley/StringRequest;->create()Lcom/android/volley/toolbox/StringRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobile/hacking/space/MHS/volley/StringRequest;


# direct methods
.method constructor <init>(Lmobile/hacking/space/MHS/volley/StringRequest;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .param p1, "this$0"    # Lmobile/hacking/space/MHS/volley/StringRequest;
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/lang/String;
    .param p5, "x3"    # Lcom/android/volley/Response$ErrorListener;

    .line 62
    .local p4, "x2":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    iput-object p1, p0, Lmobile/hacking/space/MHS/volley/StringRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/StringRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/StringRequest;

    invoke-static {v0}, Lmobile/hacking/space/MHS/volley/StringRequest;->access$400(Lmobile/hacking/space/MHS/volley/StringRequest;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/StringRequest;

    invoke-static {v0}, Lmobile/hacking/space/MHS/volley/StringRequest;->access$400(Lmobile/hacking/space/MHS/volley/StringRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/StringRequest;

    invoke-static {v0}, Lmobile/hacking/space/MHS/volley/StringRequest;->access$400(Lmobile/hacking/space/MHS/volley/StringRequest;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/StringRequest$1;->getParamsEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmobile/hacking/space/MHS/volley/StringRequest;->access$500(Lmobile/hacking/space/MHS/volley/StringRequest;Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/StringRequest;

    invoke-static {v0}, Lmobile/hacking/space/MHS/volley/StringRequest;->access$600(Lmobile/hacking/space/MHS/volley/StringRequest;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/StringRequest;

    invoke-static {v0}, Lmobile/hacking/space/MHS/volley/StringRequest;->access$600(Lmobile/hacking/space/MHS/volley/StringRequest;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_0
    return-object v0
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

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v0, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0}, Lcom/android/volley/toolbox/StringRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-super {p0}, Lcom/android/volley/toolbox/StringRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 105
    :cond_0
    iget-object v1, p0, Lmobile/hacking/space/MHS/volley/StringRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/StringRequest;

    invoke-static {v1}, Lmobile/hacking/space/MHS/volley/StringRequest;->access$700(Lmobile/hacking/space/MHS/volley/StringRequest;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 106
    return-object v0
.end method

.method public getParams()Ljava/util/Map;
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

    .line 87
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/StringRequest;

    invoke-static {v0}, Lmobile/hacking/space/MHS/volley/StringRequest;->access$400(Lmobile/hacking/space/MHS/volley/StringRequest;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 79
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/StringRequest;

    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v1, v1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v0, v1}, Lmobile/hacking/space/MHS/volley/StringRequest;->access$002(Lmobile/hacking/space/MHS/volley/StringRequest;I)I

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/StringRequest;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/StringRequest;

    iget v1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v0, v1}, Lmobile/hacking/space/MHS/volley/StringRequest;->access$002(Lmobile/hacking/space/MHS/volley/StringRequest;I)I

    .line 68
    :cond_0
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/StringRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/StringRequest;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->allHeaders:Ljava/util/List;

    invoke-static {v0, v1}, Lmobile/hacking/space/MHS/volley/StringRequest;->access$102(Lmobile/hacking/space/MHS/volley/StringRequest;Ljava/util/List;)Ljava/util/List;

    .line 69
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Lmobile/hacking/space/MHS/volley/StringRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/StringRequest;

    invoke-static {v1}, Lmobile/hacking/space/MHS/volley/StringRequest;->access$200(Lmobile/hacking/space/MHS/volley/StringRequest;)Lcom/android/volley/toolbox/StringRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/volley/toolbox/StringRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "cookies":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 71
    iget-object v1, p0, Lmobile/hacking/space/MHS/volley/StringRequest$1;->this$0:Lmobile/hacking/space/MHS/volley/StringRequest;

    invoke-static {v1, v0}, Lmobile/hacking/space/MHS/volley/StringRequest;->access$302(Lmobile/hacking/space/MHS/volley/StringRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    :cond_1
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/StringRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v1

    return-object v1
.end method
