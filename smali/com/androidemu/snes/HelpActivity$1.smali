.class Lcom/androidemu/snes/HelpActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/snes/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidemu/snes/HelpActivity;


# direct methods
.method constructor <init>(Lcom/androidemu/snes/HelpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androidemu/snes/HelpActivity$1;->this$0:Lcom/androidemu/snes/HelpActivity;

    .line 15
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/androidemu/snes/HelpActivity$1;->this$0:Lcom/androidemu/snes/HelpActivity;

    invoke-virtual {v0, p2}, Lcom/androidemu/snes/HelpActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    return-void
.end method
