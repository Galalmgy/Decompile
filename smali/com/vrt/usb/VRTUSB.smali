.class public Lcom/vrt/usb/VRTUSB;
.super Ljava/lang/Object;
.source "VRTUSB.java"


# static fields
.field private static final ACTION_VRTUSB_PERMISSION:Ljava/lang/String; = "com.vrt.USB_PERMISSION"

.field private static PermissionIntent:Landroid/app/PendingIntent;

.field private static RData:[B

.field private static UEPI:Landroid/hardware/usb/UsbEndpoint;

.field private static UEPO:Landroid/hardware/usb/UsbEndpoint;

.field private static WData:[B

.field private static usbDevice:Landroid/hardware/usb/UsbDevice;

.field private static usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private static usbHandler:Landroid/os/Handler;

.field private static usbInterface:Landroid/hardware/usb/UsbInterface;

.field private static usbManager:Landroid/hardware/usb/UsbManager;

.field private static final usbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/vrt/usb/VRTUSB;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 26
    sput-object v0, Lcom/vrt/usb/VRTUSB;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 27
    sput-object v0, Lcom/vrt/usb/VRTUSB;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 28
    sput-object v0, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 29
    sput-object v0, Lcom/vrt/usb/VRTUSB;->UEPI:Landroid/hardware/usb/UsbEndpoint;

    .line 30
    sput-object v0, Lcom/vrt/usb/VRTUSB;->UEPO:Landroid/hardware/usb/UsbEndpoint;

    .line 33
    new-array v0, v1, [B

    sput-object v0, Lcom/vrt/usb/VRTUSB;->WData:[B

    .line 34
    new-array v0, v1, [B

    sput-object v0, Lcom/vrt/usb/VRTUSB;->RData:[B

    .line 128
    new-instance v0, Lcom/vrt/usb/VRTUSB$1;

    invoke-direct {v0}, Lcom/vrt/usb/VRTUSB$1;-><init>()V

    sput-object v0, Lcom/vrt/usb/VRTUSB;->usbReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ExitUSB(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    sget-object v0, Lcom/vrt/usb/VRTUSB;->usbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    sget-object v0, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    sget-object v1, Lcom/vrt/usb/VRTUSB;->usbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 182
    sget-object v0, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 183
    const/4 v0, 0x0

    sput-object v0, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 185
    :cond_0
    return-void
.end method

.method public static GetUSBDID()J
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 258
    sget-object v2, Lcom/vrt/usb/VRTUSB;->WData:[B

    aput-byte v6, v2, v7

    .line 259
    sget-object v2, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v3, 0x6a

    aput-byte v3, v2, v8

    .line 260
    sget-object v2, Lcom/vrt/usb/VRTUSB;->WData:[B

    sget-object v3, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/16 v4, 0x10

    const/16 v5, 0x3e8

    invoke-static {v2, v6, v3, v4, v5}, Lcom/vrt/usb/VRTUSB;->bulkTransfer([BI[BII)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 261
    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v2, v2, v7

    if-ne v2, v10, :cond_0

    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v2, v2, v8

    const/16 v3, 0x6a

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/16 v3, 0xc

    invoke-static {v2, v9, v3}, Lcom/vrt/usb/VRTUSB;->GetUSBSum([BII)B

    move-result v2

    sget-object v3, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/16 v4, 0xe

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_0

    .line 263
    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v0, v2

    .line 264
    .local v0, "data":J
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 265
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v4, v4, v10

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 266
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 267
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 268
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/4 v5, 0x4

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 269
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 270
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v4, v4, v9

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 271
    const-string v2, "VRTUSB"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetUSBDID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%016X"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    return-wide v0

    .end local v0    # "data":J
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static GetUSBEID()J
    .locals 10

    .prologue
    const/4 v8, -0x1

    .line 316
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v5

    .line 317
    .local v5, "ids":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v5

    if-lt v4, v7, :cond_0

    .line 332
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    .line 319
    :cond_0
    aget v7, v5, v4

    invoke-static {v7}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    .line 320
    .local v6, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "Name":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/view/InputDevice;->getId()I

    move-result v2

    .line 324
    .local v2, "ID":I
    const-string v7, "CH"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_1

    const-string v7, "JH"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v8, :cond_2

    .line 326
    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 327
    const/16 v7, 0x10

    invoke-static {v3, v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 328
    .local v0, "EID":J
    const-string v7, "VRTUSB"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "GetUSBEID:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 317
    .end local v0    # "EID":J
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static GetUSBMac()J
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 189
    sget-object v2, Lcom/vrt/usb/VRTUSB;->WData:[B

    aput-byte v10, v2, v7

    .line 190
    sget-object v2, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v3, 0x5a

    aput-byte v3, v2, v8

    .line 191
    sget-object v2, Lcom/vrt/usb/VRTUSB;->WData:[B

    sget-object v3, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/16 v4, 0x10

    const/16 v5, 0x3e8

    invoke-static {v2, v9, v3, v4, v5}, Lcom/vrt/usb/VRTUSB;->bulkTransfer([BI[BII)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 192
    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v2, v2, v7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v2, v2, v8

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/4 v3, 0x6

    invoke-static {v2, v9, v3}, Lcom/vrt/usb/VRTUSB;->GetUSBSum([BII)B

    move-result v2

    sget-object v3, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v3, v3, v6

    if-ne v2, v3, :cond_0

    .line 194
    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v0, v2

    .line 195
    .local v0, "data":J
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 196
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 197
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v4, v4, v10

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 198
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 199
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v4, v4, v9

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 200
    const-string v2, "VRTUSB"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetUSBMac:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%016X"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    return-wide v0

    .end local v0    # "data":J
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static GetUSBSID()J
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 209
    sget-object v2, Lcom/vrt/usb/VRTUSB;->WData:[B

    aput-byte v10, v2, v7

    .line 210
    sget-object v2, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v3, 0x5b

    aput-byte v3, v2, v8

    .line 211
    sget-object v2, Lcom/vrt/usb/VRTUSB;->WData:[B

    sget-object v3, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/16 v4, 0x10

    const/16 v5, 0x3e8

    invoke-static {v2, v9, v3, v4, v5}, Lcom/vrt/usb/VRTUSB;->bulkTransfer([BI[BII)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 212
    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v2, v2, v7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v2, v2, v8

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/16 v3, 0xc

    invoke-static {v2, v9, v3}, Lcom/vrt/usb/VRTUSB;->GetUSBSum([BII)B

    move-result v2

    sget-object v3, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/16 v4, 0xe

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_0

    .line 214
    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v0, v2

    .line 215
    .local v0, "data":J
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 216
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/4 v5, 0x7

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 217
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 218
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v4, v4, v10

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 219
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/4 v5, 0x4

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 220
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 221
    shl-long v2, v0, v6

    sget-object v4, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v4, v4, v9

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 222
    const-string v2, "VRTUSB"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetUSBSID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%016X"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-wide v0

    .end local v0    # "data":J
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static GetUSBSum([BII)B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "addr"    # I
    .param p2, "size"    # I

    .prologue
    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, "sum":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 309
    return v1

    .line 308
    :cond_0
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int/2addr v2, v1

    int-to-byte v1, v2

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static GetUSBVer()V
    .locals 2

    .prologue
    .line 336
    const-string v0, "VRTUSB"

    const-string v1, "GetUSBVer:V2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method public static InitUSB(Landroid/content/Context;Landroid/os/Handler;II)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "VendorID"    # I
    .param p3, "ProductID"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 39
    sput-object p1, Lcom/vrt/usb/VRTUSB;->usbHandler:Landroid/os/Handler;

    .line 40
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.vrt.USB_PERMISSION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    sput-object v3, Lcom/vrt/usb/VRTUSB;->PermissionIntent:Landroid/app/PendingIntent;

    .line 41
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.vrt.USB_PERMISSION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "filter":Landroid/content/IntentFilter;
    sget-object v3, Lcom/vrt/usb/VRTUSB;->usbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    const-string v3, "usb"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    sput-object v3, Lcom/vrt/usb/VRTUSB;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 45
    sget-object v3, Lcom/vrt/usb/VRTUSB;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    .line 46
    .local v1, "deviceList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 48
    .local v0, "deviceIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/usb/UsbDevice;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 73
    const/4 v3, 0x0

    sput-object v3, Lcom/vrt/usb/VRTUSB;->usbDevice:Landroid/hardware/usb/UsbDevice;

    move v3, v5

    .line 74
    :goto_0
    return v3

    .line 50
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    sput-object v3, Lcom/vrt/usb/VRTUSB;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 51
    sget-object v3, Lcom/vrt/usb/VRTUSB;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    if-ne v3, p2, :cond_0

    sget-object v3, Lcom/vrt/usb/VRTUSB;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    if-ne v3, p3, :cond_0

    .line 53
    sget-object v3, Lcom/vrt/usb/VRTUSB;->usbManager:Landroid/hardware/usb/UsbManager;

    sget-object v6, Lcom/vrt/usb/VRTUSB;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v6}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 55
    invoke-static {}, Lcom/vrt/usb/VRTUSB;->OpenUSB()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 57
    sget-object v3, Lcom/vrt/usb/VRTUSB;->usbHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 58
    sget-object v3, Lcom/vrt/usb/VRTUSB;->usbHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    move v3, v4

    .line 59
    goto :goto_0

    .line 63
    :cond_3
    sget-object v3, Lcom/vrt/usb/VRTUSB;->usbHandler:Landroid/os/Handler;

    if-eqz v3, :cond_4

    .line 64
    sget-object v3, Lcom/vrt/usb/VRTUSB;->usbHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    move v3, v5

    .line 65
    goto :goto_0

    .line 69
    :cond_5
    sget-object v3, Lcom/vrt/usb/VRTUSB;->usbManager:Landroid/hardware/usb/UsbManager;

    sget-object v5, Lcom/vrt/usb/VRTUSB;->usbDevice:Landroid/hardware/usb/UsbDevice;

    sget-object v6, Lcom/vrt/usb/VRTUSB;->PermissionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v5, v6}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    move v3, v4

    .line 70
    goto :goto_0
.end method

.method public static OpenUSB()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    sget-object v4, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v4, :cond_9

    sget-object v4, Lcom/vrt/usb/VRTUSB;->usbDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v4, :cond_9

    .line 80
    sget-object v4, Lcom/vrt/usb/VRTUSB;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 82
    sget-object v4, Lcom/vrt/usb/VRTUSB;->usbDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    sput-object v4, Lcom/vrt/usb/VRTUSB;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 83
    sget-object v4, Lcom/vrt/usb/VRTUSB;->usbInterface:Landroid/hardware/usb/UsbInterface;

    if-nez v4, :cond_1

    .line 85
    const-string v3, "VRTUSB"

    const-string v4, "OpenUSB Fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .local v0, "i":I
    :goto_0
    return v2

    .line 91
    .end local v0    # "i":I
    :cond_0
    const-string v3, "VRTUSB"

    const-string v4, "OpenUSB Fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_1
    sget-object v4, Lcom/vrt/usb/VRTUSB;->usbManager:Landroid/hardware/usb/UsbManager;

    sget-object v5, Lcom/vrt/usb/VRTUSB;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v4

    sput-object v4, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 95
    sget-object v4, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v4, :cond_2

    .line 97
    const-string v3, "VRTUSB"

    const-string v4, "OpenUSB Fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v4, Lcom/vrt/usb/VRTUSB;->usbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 111
    sget-object v4, Lcom/vrt/usb/VRTUSB;->UEPI:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/vrt/usb/VRTUSB;->UEPO:Landroid/hardware/usb/UsbEndpoint;

    if-nez v4, :cond_7

    .line 113
    :cond_3
    sput-object v7, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 114
    const-string v3, "VRTUSB"

    const-string v4, "OpenUSB Fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_4
    sget-object v4, Lcom/vrt/usb/VRTUSB;->usbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v4, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    .line 103
    .local v1, "uep":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 105
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_6

    .line 106
    sput-object v1, Lcom/vrt/usb/VRTUSB;->UEPI:Landroid/hardware/usb/UsbEndpoint;

    .line 100
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_6
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    if-nez v4, :cond_5

    .line 108
    sput-object v1, Lcom/vrt/usb/VRTUSB;->UEPO:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_2

    .line 117
    .end local v1    # "uep":Landroid/hardware/usb/UsbEndpoint;
    :cond_7
    sget-object v4, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    sget-object v5, Lcom/vrt/usb/VRTUSB;->usbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v4, v5, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    move v2, v3

    .line 118
    goto :goto_0

    .line 121
    :cond_8
    sput-object v7, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 122
    const-string v3, "VRTUSB"

    const-string v4, "OpenUSB Fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "i":I
    :cond_9
    move v2, v3

    .line 126
    goto :goto_0
.end method

.method public static SetUSBDID(J)I
    .locals 10
    .param p0, "did"    # J

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x10

    const-wide/16 v5, 0xff

    const/4 v0, 0x0

    .line 279
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/4 v2, 0x3

    aput-byte v2, v1, v0

    .line 280
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0x6b

    aput-byte v2, v1, v8

    .line 281
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    shr-long v2, p0, v0

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v9

    .line 282
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/4 v2, 0x3

    const/16 v3, 0x8

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 283
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/4 v2, 0x4

    shr-long v3, p0, v7

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 284
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/4 v2, 0x5

    const/16 v3, 0x18

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 285
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/4 v2, 0x6

    const/16 v3, 0x20

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 286
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/4 v2, 0x7

    const/16 v3, 0x28

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 287
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0x8

    const/16 v3, 0x30

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 288
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0x9

    const/16 v3, 0x38

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 289
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0xa

    aput-byte v0, v1, v2

    .line 290
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0xb

    aput-byte v0, v1, v2

    .line 291
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0xc

    aput-byte v0, v1, v2

    .line 292
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0xd

    aput-byte v0, v1, v2

    .line 293
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0xe

    sget-object v3, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v4, 0xc

    invoke-static {v3, v9, v4}, Lcom/vrt/usb/VRTUSB;->GetUSBSum([BII)B

    move-result v3

    aput-byte v3, v1, v2

    .line 294
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0xf

    aput-byte v0, v1, v2

    .line 295
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/16 v3, 0x3e8

    invoke-static {v1, v7, v2, v7, v3}, Lcom/vrt/usb/VRTUSB;->bulkTransfer([BI[BII)I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 296
    sget-object v1, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v1, v1, v8

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0xe

    aget-byte v1, v1, v2

    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v2, v2, v9

    if-ne v1, v2, :cond_0

    .line 298
    const-string v1, "VRTUSB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetUSBDID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%016X"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/16 v0, 0x8

    .line 302
    :cond_0
    return v0
.end method

.method public static SetUSBSID(J)I
    .locals 10
    .param p0, "sid"    # J

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x10

    const-wide/16 v5, 0xff

    const/4 v0, 0x0

    .line 230
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/4 v2, 0x3

    aput-byte v2, v1, v0

    .line 231
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0x5c

    aput-byte v2, v1, v8

    .line 232
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    shr-long v2, p0, v0

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v9

    .line 233
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/4 v2, 0x3

    const/16 v3, 0x8

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 234
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/4 v2, 0x4

    shr-long v3, p0, v7

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 235
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/4 v2, 0x5

    const/16 v3, 0x18

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 236
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/4 v2, 0x6

    const/16 v3, 0x20

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 237
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/4 v2, 0x7

    const/16 v3, 0x28

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 238
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0x8

    const/16 v3, 0x30

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 239
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0x9

    const/16 v3, 0x38

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 240
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0xa

    aput-byte v0, v1, v2

    .line 241
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0xb

    aput-byte v0, v1, v2

    .line 242
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0xc

    aput-byte v0, v1, v2

    .line 243
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0xd

    aput-byte v0, v1, v2

    .line 244
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0xe

    sget-object v3, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v4, 0xc

    invoke-static {v3, v9, v4}, Lcom/vrt/usb/VRTUSB;->GetUSBSum([BII)B

    move-result v3

    aput-byte v3, v1, v2

    .line 245
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0xf

    aput-byte v0, v1, v2

    .line 246
    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    const/16 v3, 0x3e8

    invoke-static {v1, v7, v2, v7, v3}, Lcom/vrt/usb/VRTUSB;->bulkTransfer([BI[BII)I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 247
    sget-object v1, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v1, v1, v8

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/vrt/usb/VRTUSB;->WData:[B

    const/16 v2, 0xe

    aget-byte v1, v1, v2

    sget-object v2, Lcom/vrt/usb/VRTUSB;->RData:[B

    aget-byte v2, v2, v9

    if-ne v1, v2, :cond_0

    .line 249
    const-string v1, "VRTUSB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetUSBSID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%016X"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/16 v0, 0x8

    .line 253
    :cond_0
    return v0
.end method

.method static synthetic access$0(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lcom/vrt/usb/VRTUSB;->usbDevice:Landroid/hardware/usb/UsbDevice;

    return-void
.end method

.method static synthetic access$1()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/vrt/usb/VRTUSB;->usbHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static bulkTransfer([BI[BII)I
    .locals 3
    .param p0, "WData"    # [B
    .param p1, "WSize"    # I
    .param p2, "RData"    # [B
    .param p3, "RSize"    # I
    .param p4, "timeout"    # I

    .prologue
    const/4 v0, 0x0

    .line 168
    sget-object v1, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v1, :cond_0

    .line 170
    sget-object v1, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    sget-object v2, Lcom/vrt/usb/VRTUSB;->UEPO:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1, v2, p0, p1, p4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    sget-object v0, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    sget-object v1, Lcom/vrt/usb/VRTUSB;->UEPI:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    goto :goto_0
.end method

.method public static controlTransfer(IIII[BII)I
    .locals 8
    .param p0, "requestType"    # I
    .param p1, "request"    # I
    .param p2, "value"    # I
    .param p3, "index"    # I
    .param p4, "buffer"    # [B
    .param p5, "length"    # I
    .param p6, "timeout"    # I

    .prologue
    .line 161
    sget-object v0, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/vrt/usb/VRTUSB;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
