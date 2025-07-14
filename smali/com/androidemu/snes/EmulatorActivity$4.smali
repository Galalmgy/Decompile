.class Lcom/androidemu/snes/EmulatorActivity$4;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/snes/EmulatorActivity;->createWifiConnectDialog()Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/androidemu/snes/EmulatorActivity$4;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1051
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    .line 1053
    .local v0, "d":Landroid/app/Dialog;
    const v3, 0x7f090012

    .line 1052
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1053
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "ip":Ljava/lang/String;
    const v3, 0x7f090013

    .line 1054
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1055
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1056
    .local v2, "port":Ljava/lang/String;
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity$4;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v3, v1, v2}, Lcom/androidemu/snes/EmulatorActivity;->access$15(Lcom/androidemu/snes/EmulatorActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    return-void
.end method
