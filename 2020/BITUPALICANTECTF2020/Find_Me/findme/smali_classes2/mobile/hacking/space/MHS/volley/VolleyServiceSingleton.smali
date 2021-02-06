.class public Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;
.super Ljava/lang/Object;
.source "VolleyServiceSingleton.java"


# static fields
.field private static ourInstance:Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;


# instance fields
.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Ljavax/net/ssl/TrustManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tm"    # [Ljavax/net/ssl/TrustManager;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    .line 30
    .local v0, "factory":Ljavax/net/ssl/SSLSocketFactory;
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 31
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 32
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 35
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    goto :goto_1

    .line 33
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 34
    .local v1, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 38
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :goto_1
    move-object v1, v0

    .line 39
    .local v1, "finalFactory":Ljavax/net/ssl/SSLSocketFactory;
    new-instance v2, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton$1;

    invoke-direct {v2, p0, v1}, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton$1;-><init>(Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 54
    .local v2, "mStack":Lcom/android/volley/toolbox/HurlStack;
    invoke-static {p1, v2}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/BaseHttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v3

    iput-object v3, p0, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 55
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 58
    sget-object v0, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;->ourInstance:Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;-><init>(Landroid/content/Context;[Ljavax/net/ssl/TrustManager;)V

    sput-object v0, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;->ourInstance:Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;

    .line 61
    :cond_0
    sget-object v0, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;->ourInstance:Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Ljavax/net/ssl/TrustManager;)Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tm"    # [Ljavax/net/ssl/TrustManager;

    .line 65
    sget-object v0, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;->ourInstance:Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;

    invoke-direct {v0, p0, p1}, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;-><init>(Landroid/content/Context;[Ljavax/net/ssl/TrustManager;)V

    sput-object v0, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;->ourInstance:Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;

    .line 68
    :cond_0
    sget-object v0, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;->ourInstance:Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;

    return-object v0
.end method


# virtual methods
.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 72
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/VolleyServiceSingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method
