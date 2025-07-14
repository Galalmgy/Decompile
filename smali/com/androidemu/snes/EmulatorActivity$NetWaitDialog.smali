.class Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;
.super Landroid/app/ProgressDialog;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/snes/EmulatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetWaitDialog"
.end annotation


# instance fields
.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$0:Lcom/androidemu/snes/EmulatorActivity;


# direct methods
.method public constructor <init>(Lcom/androidemu/snes/EmulatorActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1502
    iput-object p1, p0, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    .line 1503
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1505
    invoke-virtual {p0, v0}, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->setIndeterminate(Z)V

    .line 1506
    invoke-virtual {p0, v0}, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->setCancelable(Z)V

    .line 1507
    invoke-virtual {p0, p0}, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1508
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 1516
    iget-object v1, p0, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_0

    .line 1517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1518
    iget-object v1, p0, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    invoke-interface {v1, p0, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1521
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 1525
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v0, v1}, Lcom/androidemu/snes/EmulatorActivity;->access$5(Lcom/androidemu/snes/EmulatorActivity;Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;)V

    .line 1526
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v0}, Lcom/androidemu/snes/EmulatorActivity;->access$0(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/snes/NetPlayService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidemu/snes/NetPlayService;->disconnect()V

    .line 1527
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v0, v1}, Lcom/androidemu/snes/EmulatorActivity;->access$10(Lcom/androidemu/snes/EmulatorActivity;Lcom/androidemu/snes/NetPlayService;)V

    .line 1528
    return-void
.end method

.method public setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1512
    return-void
.end method
