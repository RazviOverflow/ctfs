.class public Lmobile/hacking/space/MHS/SplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private startMainActivity()V
    .locals 4

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 22
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lmobile/hacking/space/MHS/SplashActivity$1;

    invoke-direct {v1, p0}, Lmobile/hacking/space/MHS/SplashActivity$1;-><init>(Lmobile/hacking/space/MHS/SplashActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 15
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lmobile/hacking/space/MHS/SplashActivity;->setContentView(I)V

    .line 17
    invoke-direct {p0}, Lmobile/hacking/space/MHS/SplashActivity;->startMainActivity()V

    .line 18
    return-void
.end method
