.class Lcom/vrt/usb/VRTUSB$1;
.super Landroid/content/BroadcastReceiver;
.source "VRTUSB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vrt/usb/VRTUSB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.vrt.USB_PERMISSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    monitor-enter p0

    .line 138
    :try_start_0
    const-string v1, "device"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    invoke-static {v1}, Lcom/vrt/usb/VRTUSB;->access$0(Landroid/hardware/usb/UsbDevice;)V

    .line 139
    const-string v1, "permission"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    invoke-static {}, Lcom/vrt/usb/VRTUSB;->OpenUSB()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    invoke-static {}, Lcom/vrt/usb/VRTUSB;->access$1()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Lcom/vrt/usb/VRTUSB;->access$1()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    :cond_0
    :goto_0
    monitor-exit p0

    .line 155
    :cond_1
    return-void

    .line 147
    :cond_2
    invoke-static {}, Lcom/vrt/usb/VRTUSB;->access$1()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    invoke-static {}, Lcom/vrt/usb/VRTUSB;->access$1()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 151
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/vrt/usb/VRTUSB;->access$1()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    invoke-static {}, Lcom/vrt/usb/VRTUSB;->access$1()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
