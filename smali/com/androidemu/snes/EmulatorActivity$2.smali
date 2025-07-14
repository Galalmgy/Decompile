.class Lcom/androidemu/snes/EmulatorActivity$2;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/snes/EmulatorActivity;->createQuitGameDialog()Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/androidemu/snes/EmulatorActivity$2;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1009
    packed-switch p2, :pswitch_data_0

    .line 1017
    :goto_0
    return-void

    .line 1011
    :pswitch_0
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity$2;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v0}, Lcom/androidemu/snes/EmulatorActivity;->access$11(Lcom/androidemu/snes/EmulatorActivity;)V

    .line 1014
    :pswitch_1
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity$2;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v0}, Lcom/androidemu/snes/EmulatorActivity;->finish()V

    goto :goto_0

    .line 1009
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
