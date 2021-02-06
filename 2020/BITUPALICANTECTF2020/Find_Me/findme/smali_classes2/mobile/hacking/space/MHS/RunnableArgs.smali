.class public abstract Lmobile/hacking/space/MHS/RunnableArgs;
.super Ljava/lang/Object;
.source "RunnableArgs.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field m_args:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public getArgCount()I
    .locals 1

    .line 21
    iget-object v0, p0, Lmobile/hacking/space/MHS/RunnableArgs;->m_args:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getArgs()[Ljava/lang/Object;
    .locals 1

    .line 25
    iget-object v0, p0, Lmobile/hacking/space/MHS/RunnableArgs;->m_args:[Ljava/lang/Object;

    return-object v0
.end method

.method public varargs run([Ljava/lang/Object;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, p1}, Lmobile/hacking/space/MHS/RunnableArgs;->setArgs([Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/RunnableArgs;->run()V

    .line 14
    return-void
.end method

.method public varargs setArgs([Ljava/lang/Object;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lmobile/hacking/space/MHS/RunnableArgs;->m_args:[Ljava/lang/Object;

    .line 18
    return-void
.end method
