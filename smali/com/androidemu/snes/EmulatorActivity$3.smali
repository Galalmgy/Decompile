.class Lcom/androidemu/snes/EmulatorActivity$3;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/snes/EmulatorActivity;->createReplaceGameDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidemu/snes/EmulatorActivity;


# direct methods
.method constructor <init>(Lcom/androidemu/snes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androidemu/snes/EmulatorActivity$3;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1030
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity$3;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    iget-object v1, p0, Lcom/androidemu/snes/EmulatorActivity$3;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v1}, Lcom/androidemu/snes/EmulatorActivity;->access$12(Lcom/androidemu/snes/EmulatorActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidemu/snes/EmulatorActivity;->setIntent(Landroid/content/Intent;)V

    .line 1032
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity$3;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v0}, Lcom/androidemu/snes/EmulatorActivity;->access$13(Lcom/androidemu/snes/EmulatorActivity;)Z

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity$3;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androidemu/snes/EmulatorActivity;->access$14(Lcom/androidemu/snes/EmulatorActivity;Landroid/content/Intent;)V

    .line 1035
    return-void
.end method
