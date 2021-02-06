.class public Lmobile/hacking/space/MHS/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static flag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$MainActivity()V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lmobile/hacking/space/MHS/MainActivity;->finish()V

    .line 22
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lmobile/hacking/space/MHS/MainActivity;->setContentView(I)V

    .line 19
    invoke-static {p0}, Lmobile/hacking/space/MHS/RootUtil;->isDeviceRooted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmobile/hacking/space/MHS/EmulationUtil;->isRunningOnEmulator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    :cond_0
    new-instance v5, Lmobile/hacking/space/MHS/-$$Lambda$MainActivity$PPO9mSLaeYXLtLOPoaMfgwFB0VU;

    invoke-direct {v5, p0}, Lmobile/hacking/space/MHS/-$$Lambda$MainActivity$PPO9mSLaeYXLtLOPoaMfgwFB0VU;-><init>(Lmobile/hacking/space/MHS/MainActivity;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "Atenci\u00f3n"

    const-string v3, "Su dispositivo parece estar Rooteado"

    const-string v4, "Aceptar"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lmobile/hacking/space/MHS/ErrorHelper;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 24
    :cond_1
    return-void
.end method
