.class public Lmobile/hacking/space/MHS/ErrorHelper;
.super Ljava/lang/Object;
.source "ErrorHelper.java"


# static fields
.field private static mErrorDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$showAlertDialog$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1
    .param p0, "onPositive"    # Ljava/lang/Runnable;
    .param p1, "v"    # Landroid/view/View;

    .line 67
    sget-object v0, Lmobile/hacking/space/MHS/ErrorHelper;->mErrorDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 68
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 69
    return-void
.end method

.method static synthetic lambda$showAlertDialog$2(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1
    .param p0, "onNegative"    # Ljava/lang/Runnable;
    .param p1, "v"    # Landroid/view/View;

    .line 78
    sget-object v0, Lmobile/hacking/space/MHS/ErrorHelper;->mErrorDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 79
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 80
    return-void
.end method

.method static synthetic lambda$showErrorDialog$0(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 20
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lmobile/hacking/space/MHS/ErrorHelper;->mErrorDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 25
    :goto_0
    return-void
.end method

.method public static showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "onPositive"    # Ljava/lang/Runnable;
    .param p4, "onNegative"    # Ljava/lang/Runnable;

    .line 110
    const v0, 0x7f0d0020

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lmobile/hacking/space/MHS/ErrorHelper;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public static showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "positiveButton"    # Ljava/lang/String;
    .param p4, "onPositive"    # Ljava/lang/Runnable;
    .param p5, "negativeButton"    # Ljava/lang/String;
    .param p6, "onNegative"    # Ljava/lang/Runnable;

    .line 43
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "alert_builder":Landroidx/appcompat/app/AlertDialog$Builder;
    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lmobile/hacking/space/MHS/ErrorHelper;->mErrorDialog:Landroidx/appcompat/app/AlertDialog;

    .line 59
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 60
    sget-object v1, Lmobile/hacking/space/MHS/ErrorHelper;->mErrorDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 61
    sget-object v1, Lmobile/hacking/space/MHS/ErrorHelper;->mErrorDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 63
    sget-object v1, Lmobile/hacking/space/MHS/ErrorHelper;->mErrorDialog:Landroidx/appcompat/app/AlertDialog;

    const v2, 0x7f07007b

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 64
    .local v1, "btnPositive":Landroid/widget/Button;
    const/16 v2, 0x8

    if-eqz p4, :cond_0

    .line 65
    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v3, Lmobile/hacking/space/MHS/-$$Lambda$ErrorHelper$rTnTxS8oifHFN8f2rI3nUWHaFZY;

    invoke-direct {v3, p4}, Lmobile/hacking/space/MHS/-$$Lambda$ErrorHelper$rTnTxS8oifHFN8f2rI3nUWHaFZY;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 74
    :goto_0
    sget-object v3, Lmobile/hacking/space/MHS/ErrorHelper;->mErrorDialog:Landroidx/appcompat/app/AlertDialog;

    const v4, 0x7f07006e

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 75
    .local v3, "btnNegative":Landroid/widget/Button;
    if-eqz p6, :cond_1

    .line 76
    invoke-virtual {v3, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v2, Lmobile/hacking/space/MHS/-$$Lambda$ErrorHelper$yljzdPi9A5LjZVTqEEyso9UmhZw;

    invoke-direct {v2, p6}, Lmobile/hacking/space/MHS/-$$Lambda$ErrorHelper$yljzdPi9A5LjZVTqEEyso9UmhZw;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    :goto_1
    sget-object v2, Lmobile/hacking/space/MHS/ErrorHelper;->mErrorDialog:Landroidx/appcompat/app/AlertDialog;

    const v4, 0x7f07003d

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 86
    .local v2, "dialogTitle":Landroid/widget/TextView;
    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_2
    sget-object v4, Lmobile/hacking/space/MHS/ErrorHelper;->mErrorDialog:Landroidx/appcompat/app/AlertDialog;

    const v5, 0x7f07003c

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 91
    .local v4, "dialogMessage":Landroid/widget/TextView;
    if-eqz p2, :cond_3

    .line 92
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_3
    const-string v5, ""

    .line 103
    .local v5, "message":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    :cond_4
    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 17
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 19
    .local v0, "alert_builder":Landroidx/appcompat/app/AlertDialog$Builder;
    sget-object v1, Lmobile/hacking/space/MHS/-$$Lambda$ErrorHelper$GRjqH7yvOrY88tHVUsgcI0lJGuc;->INSTANCE:Lmobile/hacking/space/MHS/-$$Lambda$ErrorHelper$GRjqH7yvOrY88tHVUsgcI0lJGuc;

    .line 27
    .local v1, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 31
    const-string v2, ""

    .line 33
    .local v2, "message":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 38
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lmobile/hacking/space/MHS/ErrorHelper;->mErrorDialog:Landroidx/appcompat/app/AlertDialog;

    .line 39
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 40
    return-void
.end method
