.class Lcom/androidemu/snes/EmulatorActivity$5;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/snes/EmulatorActivity;->onBluetoothServer()V
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
    iput-object p1, p0, Lcom/androidemu/snes/EmulatorActivity$5;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    .line 1277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity$5;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v0}, Lcom/androidemu/snes/EmulatorActivity;->access$16(Lcom/androidemu/snes/EmulatorActivity;)V

    .line 1280
    return-void
.end method
