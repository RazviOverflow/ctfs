.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# static fields
.field private static final DEFAULT_CONTENT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final RFC1123_FORMAT:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatEpochAsRfc1123(J)Ljava/lang/String;
    .locals 2
    .param p0, "epoch"    # J

    .line 145
    invoke-static {}, Lcom/android/volley/toolbox/HttpHeaderParser;->newRfc1123Formatter()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static newRfc1123Formatter()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 149
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 150
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 151
    return-object v0
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 30
    .param p0, "response"    # Lcom/android/volley/NetworkResponse;

    .line 49
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 51
    .local v2, "now":J
    iget-object v4, v1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 53
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v5, 0x0

    .line 54
    .local v5, "serverDate":J
    const-wide/16 v7, 0x0

    .line 55
    .local v7, "lastModified":J
    const-wide/16 v9, 0x0

    .line 56
    .local v9, "serverExpires":J
    const-wide/16 v11, 0x0

    .line 57
    .local v11, "softExpire":J
    const-wide/16 v13, 0x0

    .line 58
    .local v13, "finalExpire":J
    const-wide/16 v15, 0x0

    .line 59
    .local v15, "maxAge":J
    const-wide/16 v17, 0x0

    .line 60
    .local v17, "staleWhileRevalidate":J
    const/4 v0, 0x0

    .line 61
    .local v0, "hasCacheControl":Z
    const/16 v19, 0x0

    .line 63
    .local v19, "mustRevalidate":Z
    const/16 v20, 0x0

    .line 66
    .local v20, "serverEtag":Ljava/lang/String;
    move/from16 v21, v0

    .end local v0    # "hasCacheControl":Z
    .local v21, "hasCacheControl":Z
    const-string v0, "Date"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "headerValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 68
    invoke-static {v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v5

    .line 71
    :cond_0
    move-object/from16 v22, v0

    .end local v0    # "headerValue":Ljava/lang/String;
    .local v22, "headerValue":Ljava/lang/String;
    const-string v0, "Cache-Control"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-wide/from16 v23, v7

    .end local v7    # "lastModified":J
    .local v23, "lastModified":J
    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 72
    .end local v22    # "headerValue":Ljava/lang/String;
    .local v7, "headerValue":Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 73
    const/4 v8, 0x1

    .line 74
    .end local v21    # "hasCacheControl":Z
    .local v8, "hasCacheControl":Z
    const/4 v0, 0x0

    move/from16 v21, v8

    .end local v8    # "hasCacheControl":Z
    .restart local v21    # "hasCacheControl":Z
    const-string v8, ","

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    move/from16 v22, v19

    move-wide/from16 v18, v17

    move-wide/from16 v16, v15

    move v15, v0

    .end local v17    # "staleWhileRevalidate":J
    .end local v19    # "mustRevalidate":Z
    .local v15, "i":I
    .local v16, "maxAge":J
    .local v18, "staleWhileRevalidate":J
    .local v22, "mustRevalidate":Z
    :goto_0
    array-length v0, v8

    if-ge v15, v0, :cond_7

    .line 76
    aget-object v0, v8, v15

    move-object/from16 v25, v7

    .end local v7    # "headerValue":Ljava/lang/String;
    .local v25, "headerValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "token":Ljava/lang/String;
    const-string v0, "no-cache"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "no-store"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    .line 79
    :cond_1
    const-string v0, "max-age="

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v16, v26

    .line 83
    :goto_1
    goto :goto_3

    .line 82
    :catch_0
    move-exception v0

    goto :goto_1

    .line 84
    :cond_2
    const-string v0, "stale-while-revalidate="

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    const/16 v0, 0x17

    :try_start_1
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v18, v26

    .line 88
    :goto_2
    goto :goto_3

    .line 87
    :catch_1
    move-exception v0

    goto :goto_2

    .line 89
    :cond_3
    const-string v0, "must-revalidate"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "proxy-revalidate"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90
    :cond_4
    const/16 v22, 0x1

    .line 75
    .end local v7    # "token":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v25

    goto :goto_0

    .line 78
    .restart local v7    # "token":Ljava/lang/String;
    :cond_6
    :goto_4
    const/4 v0, 0x0

    return-object v0

    .line 75
    .end local v25    # "headerValue":Ljava/lang/String;
    .local v7, "headerValue":Ljava/lang/String;
    :cond_7
    move-object/from16 v25, v7

    .end local v7    # "headerValue":Ljava/lang/String;
    .restart local v25    # "headerValue":Ljava/lang/String;
    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move/from16 v0, v21

    move/from16 v19, v22

    goto :goto_5

    .line 72
    .end local v8    # "tokens":[Ljava/lang/String;
    .end local v16    # "maxAge":J
    .end local v18    # "staleWhileRevalidate":J
    .end local v22    # "mustRevalidate":Z
    .end local v25    # "headerValue":Ljava/lang/String;
    .restart local v7    # "headerValue":Ljava/lang/String;
    .local v15, "maxAge":J
    .restart local v17    # "staleWhileRevalidate":J
    .restart local v19    # "mustRevalidate":Z
    :cond_8
    move-object/from16 v25, v7

    .end local v7    # "headerValue":Ljava/lang/String;
    .restart local v25    # "headerValue":Ljava/lang/String;
    move/from16 v0, v21

    .line 95
    .end local v21    # "hasCacheControl":Z
    .local v0, "hasCacheControl":Z
    :goto_5
    const-string v7, "Expires"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 96
    .end local v25    # "headerValue":Ljava/lang/String;
    .restart local v7    # "headerValue":Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 97
    invoke-static {v7}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v9

    .line 100
    :cond_9
    const-string v8, "Last-Modified"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    .line 101
    if-eqz v7, :cond_a

    .line 102
    invoke-static {v7}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v28, v21

    move-object/from16 v21, v7

    move-wide/from16 v7, v28

    .end local v23    # "lastModified":J
    .local v21, "lastModified":J
    goto :goto_6

    .line 101
    .end local v21    # "lastModified":J
    .restart local v23    # "lastModified":J
    :cond_a
    move-object/from16 v21, v7

    move-wide/from16 v7, v23

    .line 105
    .end local v23    # "lastModified":J
    .local v7, "lastModified":J
    .local v21, "headerValue":Ljava/lang/String;
    :goto_6
    move-wide/from16 v22, v11

    .end local v11    # "softExpire":J
    .local v22, "softExpire":J
    const-string v11, "ETag"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 109
    .end local v20    # "serverEtag":Ljava/lang/String;
    .local v11, "serverEtag":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 110
    const-wide/16 v24, 0x3e8

    mul-long v26, v15, v24

    add-long v22, v2, v26

    .line 111
    if-eqz v19, :cond_b

    move-wide/from16 v24, v22

    goto :goto_7

    :cond_b
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->signum(J)I

    mul-long v24, v24, v17

    add-long v24, v22, v24

    :goto_7
    move-wide/from16 v13, v24

    move-wide/from16 v28, v13

    move-wide/from16 v12, v22

    move-wide/from16 v22, v2

    move-wide/from16 v2, v28

    goto :goto_8

    .line 112
    :cond_c
    const-wide/16 v24, 0x0

    cmp-long v12, v5, v24

    if-lez v12, :cond_d

    cmp-long v12, v9, v5

    if-ltz v12, :cond_d

    .line 114
    sub-long v24, v9, v5

    add-long v22, v2, v24

    .line 115
    move-wide/from16 v13, v22

    move-wide/from16 v28, v13

    move-wide/from16 v12, v22

    move-wide/from16 v22, v2

    move-wide/from16 v2, v28

    goto :goto_8

    .line 118
    :cond_d
    move-wide/from16 v28, v13

    move-wide/from16 v12, v22

    move-wide/from16 v22, v2

    move-wide/from16 v2, v28

    .end local v13    # "finalExpire":J
    .local v2, "finalExpire":J
    .local v12, "softExpire":J
    .local v22, "now":J
    :goto_8
    new-instance v14, Lcom/android/volley/Cache$Entry;

    invoke-direct {v14}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 119
    .local v14, "entry":Lcom/android/volley/Cache$Entry;
    move/from16 v20, v0

    .end local v0    # "hasCacheControl":Z
    .local v20, "hasCacheControl":Z
    iget-object v0, v1, Lcom/android/volley/NetworkResponse;->data:[B

    iput-object v0, v14, Lcom/android/volley/Cache$Entry;->data:[B

    .line 120
    iput-object v11, v14, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 121
    iput-wide v12, v14, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 122
    iput-wide v2, v14, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 123
    iput-wide v5, v14, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 124
    iput-wide v7, v14, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 125
    iput-object v4, v14, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 126
    iget-object v0, v1, Lcom/android/volley/NetworkResponse;->allHeaders:Ljava/util/List;

    iput-object v0, v14, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    .line 128
    return-object v14
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 184
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "defaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 163
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 165
    const/4 v1, 0x0

    const-string v2, ";"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "params":[Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 167
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "pair":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 169
    aget-object v5, v4, v1

    const-string v6, "charset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    const/4 v1, 0x1

    aget-object v1, v4, v1

    return-object v1

    .line 166
    .end local v4    # "pair":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "params":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    return-object p1
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 3
    .param p0, "dateStr"    # Ljava/lang/String;

    .line 135
    :try_start_0
    invoke-static {}, Lcom/android/volley/toolbox/HttpHeaderParser;->newRfc1123Formatter()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Unable to parse dateStr: %s, falling back to 0"

    invoke-static {v0, v2, v1}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method static toAllHeaderList(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 202
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v0, "allHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 204
    .local v2, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lcom/android/volley/Header;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v2    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 206
    :cond_0
    return-object v0
.end method

.method static toHeaderMap(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    .local p0, "allHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 195
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Header;

    .line 196
    .local v2, "header":Lcom/android/volley/Header;
    invoke-virtual {v2}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v2    # "header":Lcom/android/volley/Header;
    goto :goto_0

    .line 198
    :cond_0
    return-object v0
.end method
