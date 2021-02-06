.class public final synthetic Lmobile/hacking/space/MHS/-$$Lambda$ErrorHelper$yljzdPi9A5LjZVTqEEyso9UmhZw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmobile/hacking/space/MHS/-$$Lambda$ErrorHelper$yljzdPi9A5LjZVTqEEyso9UmhZw;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lmobile/hacking/space/MHS/-$$Lambda$ErrorHelper$yljzdPi9A5LjZVTqEEyso9UmhZw;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lmobile/hacking/space/MHS/ErrorHelper;->lambda$showAlertDialog$2(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
