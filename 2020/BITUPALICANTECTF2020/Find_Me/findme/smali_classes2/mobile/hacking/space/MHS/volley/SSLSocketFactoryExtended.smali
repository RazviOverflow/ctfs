.class public Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLSocketFactoryExtended.java"


# instance fields
.field private mCiphers:[Ljava/lang/String;

.field private mProtocols:[Ljava/lang/String;

.field private mSSLContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->initSSLSocketFactoryEx([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/TrustManager;)V
    .locals 2
    .param p1, "tm"    # Ljavax/net/ssl/TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->initSSLSocketFactoryEx([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 28
    return-void
.end method

.method private initSSLSocketFactoryEx([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "km"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tm"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 94
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mSSLContext:Ljavax/net/ssl/SSLContext;

    .line 95
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 97
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->GetProtocolList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mProtocols:[Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->GetCipherList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mCiphers:[Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method protected GetCipherList()[Ljava/lang/String;
    .locals 3

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 135
    .local v1, "factory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method protected GetProtocolList()[Ljava/lang/String;
    .locals 9

    .line 102
    const-string v0, "TLSv1.2"

    const-string v1, "TLSv1.3"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "protocols":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 105
    .local v1, "availableProtocols":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 108
    .local v2, "socket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    iget-object v3, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 109
    .local v3, "factory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    move-object v2, v4

    .line 111
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 115
    .end local v3    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    if-eqz v2, :cond_0

    .line 117
    :try_start_1
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :goto_0
    goto :goto_1

    .line 118
    :catch_0
    move-exception v3

    goto :goto_0

    .line 122
    :cond_0
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_2

    aget-object v7, v0, v6

    .line 124
    .local v7, "protocol":Ljava/lang/String;
    invoke-static {v1, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 125
    .local v8, "idx":I
    if-ltz v8, :cond_1

    .line 126
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v7    # "protocol":Ljava/lang/String;
    .end local v8    # "idx":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 129
    :cond_2
    new-array v4, v5, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4

    .line 115
    .end local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 112
    :catch_1
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "TLSv1.1"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    if-eqz v2, :cond_3

    .line 117
    :try_start_3
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 119
    goto :goto_3

    .line 118
    :catch_2
    move-exception v5

    .line 113
    :cond_3
    :goto_3
    return-object v4

    .line 115
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v2, :cond_4

    .line 117
    :try_start_4
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 119
    goto :goto_5

    .line 118
    :catch_3
    move-exception v4

    .line 120
    :cond_4
    :goto_5
    throw v3
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 84
    .local v0, "factory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 86
    .local v1, "ss":Ljavax/net/ssl/SSLSocket;
    iget-object v2, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mProtocols:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mCiphers:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 89
    return-object v1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 64
    .local v0, "factory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 66
    .local v1, "ss":Ljavax/net/ssl/SSLSocket;
    iget-object v2, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mProtocols:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mCiphers:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 69
    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 74
    .local v0, "factory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 76
    .local v1, "ss":Ljavax/net/ssl/SSLSocket;
    iget-object v2, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mProtocols:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mCiphers:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 79
    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 54
    .local v0, "factory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 56
    .local v1, "ss":Ljavax/net/ssl/SSLSocket;
    iget-object v2, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mProtocols:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mCiphers:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 59
    return-object v1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 3
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 44
    .local v0, "factory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 46
    .local v1, "ss":Ljavax/net/ssl/SSLSocket;
    iget-object v2, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mProtocols:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mCiphers:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 49
    return-object v1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mCiphers:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lmobile/hacking/space/MHS/volley/SSLSocketFactoryExtended;->mCiphers:[Ljava/lang/String;

    return-object v0
.end method
