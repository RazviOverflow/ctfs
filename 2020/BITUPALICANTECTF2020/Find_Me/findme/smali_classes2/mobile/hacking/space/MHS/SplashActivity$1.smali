.class Lmobile/hacking/space/MHS/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobile/hacking/space/MHS/SplashActivity;->startMainActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobile/hacking/space/MHS/SplashActivity;


# direct methods
.method constructor <init>(Lmobile/hacking/space/MHS/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lmobile/hacking/space/MHS/SplashActivity;

    .line 22
    iput-object p1, p0, Lmobile/hacking/space/MHS/SplashActivity$1;->this$0:Lmobile/hacking/space/MHS/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 25
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmobile/hacking/space/MHS/SplashActivity$1;->this$0:Lmobile/hacking/space/MHS/SplashActivity;

    const-class v2, Lmobile/hacking/space/MHS/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lmobile/hacking/space/MHS/SplashActivity$1;->this$0:Lmobile/hacking/space/MHS/SplashActivity;

    invoke-virtual {v1, v0}, Lmobile/hacking/space/MHS/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void
.end method
