.class Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton$1;
.super Lcom/android/volley/toolbox/HurlStack;
.source "VolleyServiceSingleton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;-><init>(Landroid/content/Context;[Ljavax/net/ssl/TrustManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;

.field final synthetic val$finalFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method constructor <init>(Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "this$0"    # Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;

    .line 39
    iput-object p1, p0, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton$1;->this$0:Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;

    iput-object p2, p0, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton$1;->val$finalFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {p0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    return-void
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 44
    .local v0, "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    iget-object v1, p0, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton$1;->val$finalFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 45
    const-string v1, "charset"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
