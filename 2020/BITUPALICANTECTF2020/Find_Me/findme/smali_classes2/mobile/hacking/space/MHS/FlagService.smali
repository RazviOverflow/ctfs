.class public Lmobile/hacking/space/MHS/FlagService;
.super Ljava/lang/Object;
.source "FlagService.java"


# static fields
.field private static instance:Lmobile/hacking/space/MHS/FlagService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lmobile/hacking/space/MHS/FlagService;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lmobile/hacking/space/MHS/FlagService;->getHurlStack()Lcom/android/volley/toolbox/HurlStack;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/BaseHttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lmobile/hacking/space/MHS/FlagService;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 44
    return-void
.end method

.method private addQueue(Lmobile/hacking/space/MHS/volley/StringRequest;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "jsonObjectRequest"    # Lmobile/hacking/space/MHS/volley/StringRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobile/hacking/space/MHS/volley/StringRequest;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Lmobile/hacking/space/MHS/volley/StringRequest;->addParams(Ljava/util/Map;)V

    .line 85
    invoke-virtual {p1, v0}, Lmobile/hacking/space/MHS/volley/StringRequest;->addHeaders(Ljava/util/Map;)V

    .line 87
    iget-object v1, p0, Lmobile/hacking/space/MHS/FlagService;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1}, Lmobile/hacking/space/MHS/volley/StringRequest;->getVolleyRequest()Lcom/android/volley/toolbox/StringRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 88
    return-void
.end method

.method private getHurlStack()Lcom/android/volley/toolbox/HurlStack;
    .locals 8

    .line 51
    const/4 v0, 0x0

    .line 55
    .local v0, "hurlStack":Lcom/android/volley/toolbox/HurlStack;
    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 56
    .local v1, "ks":Ljava/security/KeyStore;
    invoke-static {v1}, Lmobile/hacking/space/MHS/CompositeX509TrustManager;->getTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 58
    .local v2, "trustManager":[Ljavax/net/ssl/TrustManager;
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 63
    .local v3, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 68
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    .line 69
    .local v5, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v5, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 70
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    .line 71
    .local v6, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    new-instance v7, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v7, v4, v6}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .line 74
    .end local v1    # "ks":Ljava/security/KeyStore;
    .end local v2    # "trustManager":[Ljavax/net/ssl/TrustManager;
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v6    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception:"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
