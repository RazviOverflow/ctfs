.class Lcom/google/thirdparty/publicsuffix/TrieParser;
.super Ljava/lang/Object;
.source "TrieParser.java"


# static fields
.field private static final PREFIX_JOINER:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, ""

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/thirdparty/publicsuffix/TrieParser;->PREFIX_JOINER:Lcom/google/common/base/Joiner;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doParseTrieToBuilder(Ljava/util/List;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableMap$Builder;)I
    .locals 9
    .param p1, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "Ljava/lang/String;",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;)I"
        }
    .end annotation

    .line 65
    .local p0, "stack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/google/thirdparty/publicsuffix/PublicSuffixType;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 66
    .local v0, "encodedLen":I
    const/4 v1, 0x0

    .line 67
    .local v1, "idx":I
    const/4 v2, 0x0

    .line 70
    .local v2, "c":C
    :goto_0
    const/16 v3, 0x3a

    const/16 v4, 0x21

    const/16 v5, 0x2c

    const/16 v6, 0x3f

    if-ge v1, v0, :cond_1

    .line 71
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 72
    const/16 v7, 0x26

    if-eq v2, v7, :cond_1

    if-eq v2, v6, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    if-ne v2, v5, :cond_0

    .line 73
    goto :goto_1

    .line 70
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-interface {p1, v7, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Lcom/google/thirdparty/publicsuffix/TrieParser;->reverse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {p0, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 79
    if-eq v2, v4, :cond_2

    if-eq v2, v6, :cond_2

    if-eq v2, v3, :cond_2

    if-ne v2, v5, :cond_3

    .line 84
    :cond_2
    sget-object v3, Lcom/google/thirdparty/publicsuffix/TrieParser;->PREFIX_JOINER:Lcom/google/common/base/Joiner;

    invoke-virtual {v3, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "domain":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 86
    invoke-static {v2}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->fromCode(C)Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 89
    .end local v3    # "domain":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 91
    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_6

    .line 92
    :cond_4
    if-ge v1, v0, :cond_6

    .line 94
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/google/thirdparty/publicsuffix/TrieParser;->doParseTrieToBuilder(Ljava/util/List;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableMap$Builder;)I

    move-result v3

    add-int/2addr v1, v3

    .line 95
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_5

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4

    .line 97
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 102
    :cond_6
    invoke-interface {p0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    return v1
.end method

.method static parseTrie(Ljava/lang/CharSequence;)Lcom/google/common/collect/ImmutableMap;
    .locals 5
    .param p0, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 40
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/google/thirdparty/publicsuffix/PublicSuffixType;>;"
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 41
    .local v1, "encodedLen":I
    const/4 v2, 0x0

    .line 42
    .local v2, "idx":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 43
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-interface {p0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/google/thirdparty/publicsuffix/TrieParser;->doParseTrieToBuilder(Ljava/util/List;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableMap$Builder;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method private static reverse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 112
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 113
    .local v0, "length":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 114
    return-object p0

    .line 117
    :cond_0
    new-array v1, v0, [C

    .line 118
    .local v1, "buffer":[C
    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 120
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 121
    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v2

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 122
    aget-char v3, v1, v2

    add-int/lit8 v4, v2, -0x1

    aget-char v4, v1, v4

    invoke-static {v3, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    add-int/lit8 v3, v2, -0x1

    invoke-static {v1, v3, v2}, Lcom/google/thirdparty/publicsuffix/TrieParser;->swap([CII)V

    .line 120
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private static swap([CII)V
    .locals 2
    .param p0, "buffer"    # [C
    .param p1, "f"    # I
    .param p2, "s"    # I

    .line 131
    aget-char v0, p0, p1

    .line 132
    .local v0, "tmp":C
    aget-char v1, p0, p2

    aput-char v1, p0, p1

    .line 133
    aput-char v0, p0, p2

    .line 134
    return-void
.end method
