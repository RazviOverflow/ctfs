.class final Lcom/google/common/base/CharMatcher$12;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->isEither(CC)Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match1:C

.field final synthetic val$match2:C


# direct methods
.method constructor <init>(Ljava/lang/String;CC)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 519
    iput-char p2, p0, Lcom/google/common/base/CharMatcher$12;->val$match1:C

    iput-char p3, p0, Lcom/google/common/base/CharMatcher$12;->val$match2:C

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 521
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match1:C

    if-eq p1, v0, :cond_1

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match2:C

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 1
    .param p1, "table"    # Ljava/util/BitSet;

    .line 526
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match1:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 527
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match2:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 528
    return-void
.end method
