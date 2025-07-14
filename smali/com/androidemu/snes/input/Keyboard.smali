.class public Lcom/androidemu/snes/input/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnGenericMotionListener;


# static fields
.field public static DeviceInfo:[[I = null

.field public static GameKeyIdx:[I = null

.field public static KEY1P:Z = false

.field public static KeyMapFlag:Z = false

.field public static KeyMapInfo:[[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "Keyboard"

.field private static keysMap:[I


# instance fields
.field private curAxisX:[[I

.field private curAxisY:[[I

.field private gameKeyListener:Lcom/androidemu/snes/input/GameKeyListener;

.field private keyStates:I

.field private preAxisX:[[I

.field private preAxisY:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x9

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 26
    const/16 v0, 0x200

    new-array v0, v0, [I

    sput-object v0, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    .line 242
    sput-boolean v2, Lcom/androidemu/snes/input/Keyboard;->KEY1P:Z

    .line 243
    sput-boolean v2, Lcom/androidemu/snes/input/Keyboard;->KeyMapFlag:Z

    .line 245
    const/16 v0, 0xe

    new-array v0, v0, [I

    const/16 v1, 0xd

    aput v1, v0, v2

    const/16 v1, 0xc

    aput v1, v0, v6

    const/16 v1, 0xb

    aput v1, v0, v4

    const/4 v1, 0x3

    const/16 v2, 0xa

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xe

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xf

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v5, v0, v1

    aput v3, v0, v3

    aput v5, v0, v5

    const/16 v1, 0xb

    aput v6, v0, v1

    const/16 v1, 0xc

    aput v4, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/androidemu/snes/input/Keyboard;->GameKeyIdx:[I

    .line 247
    filled-new-array {v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/androidemu/snes/input/Keyboard;->DeviceInfo:[[I

    .line 248
    const/16 v0, 0x10

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/androidemu/snes/input/Keyboard;->KeyMapInfo:[[I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/androidemu/snes/input/GameKeyListener;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/androidemu/snes/input/GameKeyListener;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-array v0, v2, [[I

    new-array v1, v2, [I

    aput-object v1, v0, v3

    new-array v1, v2, [I

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisX:[[I

    .line 30
    new-array v0, v2, [[I

    new-array v1, v2, [I

    aput-object v1, v0, v3

    new-array v1, v2, [I

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisY:[[I

    .line 31
    new-array v0, v2, [[I

    new-array v1, v2, [I

    aput-object v1, v0, v3

    new-array v1, v2, [I

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/androidemu/snes/input/Keyboard;->preAxisX:[[I

    .line 32
    new-array v0, v2, [[I

    new-array v1, v2, [I

    aput-object v1, v0, v3

    new-array v1, v2, [I

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/androidemu/snes/input/Keyboard;->preAxisY:[[I

    .line 35
    iput-object p2, p0, Lcom/androidemu/snes/input/Keyboard;->gameKeyListener:Lcom/androidemu/snes/input/GameKeyListener;

    .line 36
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 37
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 38
    return-void
.end method

.method public static ChkUSBID(I)Z
    .locals 8
    .param p0, "ID"    # I

    .prologue
    const v7, 0x1000010

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 401
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 402
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    move v4, v5

    .line 410
    :cond_0
    return v4

    .line 404
    :cond_1
    aget v3, v2, v1

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 405
    .local v0, "device":Landroid/view/InputDevice;
    aget v3, v2, v1

    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->DeviceInfo:[[I

    aget-object v6, v6, p0

    aget v6, v6, v5

    if-ge v3, v6, :cond_2

    aget v3, v2, v1

    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->DeviceInfo:[[I

    aget-object v6, v6, p0

    aget v6, v6, v4

    if-lt v3, v6, :cond_2

    .line 406
    aget v3, v2, v1

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice;->getSources()I

    move-result v3

    and-int/lit16 v3, v3, 0x401

    const/16 v6, 0x401

    if-ne v3, v6, :cond_3

    move v3, v4

    .line 407
    :goto_1
    aget v6, v2, v1

    invoke-static {v6}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_4

    move v6, v4

    :goto_2
    or-int/2addr v3, v6

    if-nez v3, :cond_0

    .line 402
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    .line 406
    goto :goto_1

    :cond_4
    move v6, v5

    .line 407
    goto :goto_2
.end method

.method public static GetUSBID(I)I
    .locals 6
    .param p0, "ID"    # I

    .prologue
    const v5, 0x1000010

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 397
    :cond_0
    return v0

    .line 392
    :cond_1
    sget-object v1, Lcom/androidemu/snes/input/Keyboard;->DeviceInfo:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    if-ge p0, v1, :cond_2

    sget-object v1, Lcom/androidemu/snes/input/Keyboard;->DeviceInfo:[[I

    aget-object v1, v1, v0

    aget v1, v1, v2

    if-lt p0, v1, :cond_2

    .line 393
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    and-int/lit16 v1, v1, 0x401

    const/16 v4, 0x401

    if-ne v1, v4, :cond_3

    move v1, v2

    .line 394
    :goto_1
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_4

    move v4, v2

    :goto_2
    or-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 391
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v3

    .line 393
    goto :goto_1

    :cond_4
    move v4, v3

    .line 394
    goto :goto_2
.end method

.method public static getKeyFile()Ljava/lang/String;
    .locals 7

    .prologue
    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v4}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".csv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 483
    :goto_0
    return-object v3

    .line 454
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v4}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "roms"

    const-string v6, "keymap"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".csv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 455
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 457
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 459
    :cond_1
    sget-object v3, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v3}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 460
    const-string v3, "\\/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "dir":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "VSFC/keymap/VKEY.csv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 465
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 467
    :cond_2
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "VKEY.csv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 469
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 471
    :cond_3
    sget-object v3, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v3}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 472
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    .restart local v1    # "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/mnt/sdcard/VSFC/keymap/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".csv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 476
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 478
    :cond_4
    const-string v2, "/mnt/sdcard/VSFC/keymap/VKEY.csv"

    .line 479
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 481
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 483
    :cond_5
    const-string v3, "/mnt/sdcard/VKEY.csv"

    goto/16 :goto_0
.end method

.method public static getUsbFile()Ljava/lang/String;
    .locals 5

    .prologue
    .line 487
    sget-object v3, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v3}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "path":Ljava/lang/String;
    const-string v3, "\\/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "dir":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "VUSB.csv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 493
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 495
    :goto_0
    return-object v3

    :cond_0
    const-string v3, "/mnt/sdcard/VUSB.csv"

    goto :goto_0
.end method

.method public static initGIOKey()Z
    .locals 6

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "b":Z
    sget-boolean v3, Lcom/androidemu/snes/input/Keyboard;->KeyMapFlag:Z

    if-eqz v3, :cond_0

    .line 434
    const/4 v1, 0x4

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-lt v1, v3, :cond_1

    .line 445
    .end local v1    # "i":I
    :cond_0
    return v0

    .line 435
    .restart local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    :cond_2
    sget-object v3, Lcom/androidemu/snes/input/Keyboard;->KeyMapInfo:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    if-eqz v3, :cond_3

    .line 438
    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    .line 439
    sget-object v3, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    sget-object v4, Lcom/androidemu/snes/input/Keyboard;->GameKeyIdx:[I

    aget v4, v4, v2

    sget-object v5, Lcom/androidemu/snes/input/Keyboard;->KeyMapInfo:[[I

    aget-object v5, v5, v1

    aget v5, v5, v2

    aput v5, v3, v4

    .line 443
    :goto_2
    const/4 v0, 0x1

    .line 435
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 442
    :cond_4
    sget-object v3, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    sget-object v4, Lcom/androidemu/snes/input/Keyboard;->GameKeyIdx:[I

    aget v4, v4, v2

    sget-object v5, Lcom/androidemu/snes/input/Keyboard;->KeyMapInfo:[[I

    aget-object v5, v5, v1

    aget v5, v5, v2

    aput v5, v3, v4

    goto :goto_2
.end method

.method public static initKeyMap()Z
    .locals 11

    .prologue
    const/16 v10, 0xe

    .line 253
    const/4 v3, 0x0

    .line 257
    .local v3, "f":Z
    :try_start_0
    new-instance v1, Lcom/csvreader/CsvReader;

    invoke-static {}, Lcom/androidemu/snes/input/Keyboard;->getKeyFile()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c

    const-string v8, "GBK"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/csvreader/CsvReader;-><init>(Ljava/lang/String;CLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 260
    .local v1, "csvReader":Lcom/csvreader/CsvReader;
    :try_start_1
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x113

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    aput v8, v6, v7

    .line 261
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x114

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    aput v8, v6, v7

    .line 262
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x115

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    aput v8, v6, v7

    .line 263
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x116

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    aput v8, v6, v7

    .line 266
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x1c4

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0x8

    aget v8, v8, v9

    aput v8, v6, v7

    .line 267
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x1c5

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0x9

    aget v8, v8, v9

    aput v8, v6, v7

    .line 268
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x1bd

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xa

    aget v8, v8, v9

    aput v8, v6, v7

    .line 269
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x1be

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xb

    aget v8, v8, v9

    aput v8, v6, v7

    .line 270
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x1bc

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xc

    aget v8, v8, v9

    aput v8, v6, v7

    .line 271
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x1bf

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xd

    aget v8, v8, v9

    aput v8, v6, v7

    .line 272
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x1c0

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xe

    aget v8, v8, v9

    aput v8, v6, v7

    .line 273
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x1c1

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xf

    aget v8, v8, v9

    aput v8, v6, v7

    .line 276
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x16d

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0x8

    aget v8, v8, v9

    aput v8, v6, v7

    .line 277
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x16c

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0x9

    aget v8, v8, v9

    aput v8, v6, v7

    .line 278
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x161

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xa

    aget v8, v8, v9

    aput v8, v6, v7

    .line 279
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x160

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xb

    aget v8, v8, v9

    aput v8, v6, v7

    .line 280
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x164

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xc

    aget v8, v8, v9

    aput v8, v6, v7

    .line 281
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x163

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xd

    aget v8, v8, v9

    aput v8, v6, v7

    .line 282
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x167

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xe

    aget v8, v8, v9

    aput v8, v6, v7

    .line 283
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x169

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xf

    aget v8, v8, v9

    aput v8, v6, v7

    .line 285
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x13

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 286
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x14

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 287
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x15

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 288
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x16

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 290
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0xc4

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0x8

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 291
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0xc5

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0x9

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 292
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0xbd

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xa

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 293
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0xbe

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xb

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 294
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0xbc

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xc

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 295
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0xbf

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xd

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 296
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0xc0

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xe

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 297
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0xc1

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xf

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 300
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x6d

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0x8

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 301
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x6c

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0x9

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 302
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x61

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xa

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 303
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x60

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xb

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 304
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x64

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xc

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 305
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x63

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xd

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 306
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x67

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xe

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 307
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/16 v7, 0x69

    sget-object v8, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    const/16 v9, 0xf

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 309
    const/4 v4, 0x0

    .line 310
    .local v4, "i":I
    invoke-virtual {v1}, Lcom/csvreader/CsvReader;->readRecord()Z

    .line 311
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/csvreader/CsvReader;->get(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 312
    const/4 v6, 0x1

    sput-boolean v6, Lcom/androidemu/snes/input/Keyboard;->KEY1P:Z

    .line 313
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/csvreader/CsvReader;->readRecord()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v6

    if-nez v6, :cond_2

    .line 339
    const/4 v3, 0x1

    .line 352
    .end local v1    # "csvReader":Lcom/csvreader/CsvReader;
    .end local v4    # "i":I
    :goto_1
    :try_start_2
    new-instance v1, Lcom/csvreader/CsvReader;

    invoke-static {}, Lcom/androidemu/snes/input/Keyboard;->getUsbFile()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c

    const-string v8, "GBK"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/csvreader/CsvReader;-><init>(Ljava/lang/String;CLjava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6

    .line 355
    .restart local v1    # "csvReader":Lcom/csvreader/CsvReader;
    const/4 v4, 0x0

    .line 356
    .restart local v4    # "i":I
    :try_start_3
    invoke-virtual {v1}, Lcom/csvreader/CsvReader;->readRecord()Z

    .line 357
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/csvreader/CsvReader;->get(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 358
    const/4 v6, 0x1

    sput-boolean v6, Lcom/androidemu/snes/input/Keyboard;->KEY1P:Z

    .line 359
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/csvreader/CsvReader;->readRecord()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v6

    if-nez v6, :cond_4

    .line 375
    const/4 v3, 0x1

    .line 386
    .end local v1    # "csvReader":Lcom/csvreader/CsvReader;
    .end local v4    # "i":I
    :goto_3
    return v3

    .line 318
    .restart local v1    # "csvReader":Lcom/csvreader/CsvReader;
    .restart local v4    # "i":I
    :cond_2
    :try_start_4
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->DeviceInfo:[[I

    aget-object v6, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/csvreader/CsvReader;->get(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7

    .line 319
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->DeviceInfo:[[I

    aget-object v6, v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/csvreader/CsvReader;->get(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 326
    :goto_4
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    if-lt v5, v10, :cond_3

    .line 337
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 321
    .end local v5    # "j":I
    :catch_0
    move-exception v2

    .line 323
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->DeviceInfo:[[I

    aget-object v6, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 324
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->DeviceInfo:[[I

    aget-object v6, v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 341
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "i":I
    :catch_1
    move-exception v2

    .line 343
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 346
    .end local v1    # "csvReader":Lcom/csvreader/CsvReader;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 348
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 329
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "csvReader":Lcom/csvreader/CsvReader;
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    :cond_3
    add-int/lit8 v6, v5, 0x3

    :try_start_7
    invoke-virtual {v1, v6}, Lcom/csvreader/CsvReader;->get(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 330
    .local v0, "Data":Ljava/lang/Integer;
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->KeyMapInfo:[[I

    aget-object v6, v6, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v5
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    .line 326
    .end local v0    # "Data":Ljava/lang/Integer;
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 332
    :catch_3
    move-exception v2

    .line 334
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_8
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->KeyMapInfo:[[I

    aget-object v6, v6, v4

    const/4 v7, 0x0

    aput v7, v6, v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    .line 364
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "j":I
    :cond_4
    :try_start_9
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->DeviceInfo:[[I

    aget-object v6, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/csvreader/CsvReader;->get(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7

    .line 365
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->DeviceInfo:[[I

    aget-object v6, v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/csvreader/CsvReader;->get(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_6

    .line 373
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 367
    :catch_4
    move-exception v2

    .line 369
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    :try_start_a
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->DeviceInfo:[[I

    aget-object v6, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 370
    sget-object v6, Lcom/androidemu/snes/input/Keyboard;->DeviceInfo:[[I

    aget-object v6, v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_7

    .line 377
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v2

    .line 379
    .local v2, "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_3

    .line 382
    .end local v1    # "csvReader":Lcom/csvreader/CsvReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "i":I
    :catch_6
    move-exception v2

    .line 384
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public static initUSBKey()Z
    .locals 6

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "b":Z
    sget-boolean v3, Lcom/androidemu/snes/input/Keyboard;->KeyMapFlag:Z

    if-eqz v3, :cond_0

    .line 417
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    .line 427
    .end local v1    # "i":I
    :cond_0
    return v0

    .line 418
    .restart local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_2
    sget-object v3, Lcom/androidemu/snes/input/Keyboard;->KeyMapInfo:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    if-eqz v3, :cond_3

    .line 421
    if-nez v1, :cond_4

    .line 422
    sget-object v3, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    sget-object v4, Lcom/androidemu/snes/input/Keyboard;->GameKeyIdx:[I

    aget v4, v4, v2

    sget-object v5, Lcom/androidemu/snes/input/Keyboard;->KeyMapInfo:[[I

    aget-object v5, v5, v1

    aget v5, v5, v2

    or-int/lit16 v5, v5, 0x100

    aput v5, v3, v4

    .line 425
    :goto_2
    const/4 v0, 0x1

    .line 418
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 424
    :cond_4
    sget-object v3, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    sget-object v4, Lcom/androidemu/snes/input/Keyboard;->GameKeyIdx:[I

    aget v4, v4, v2

    sget-object v5, Lcom/androidemu/snes/input/Keyboard;->KeyMapInfo:[[I

    aget-object v5, v5, v1

    aget v5, v5, v2

    aput v5, v3, v4

    goto :goto_2
.end method


# virtual methods
.method public clearKeyMap()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 51
    return-void

    .line 50
    :cond_0
    sget-object v1, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getKeyStates()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/androidemu/snes/input/Keyboard;->keyStates:I

    return v0
.end method

.method public mapKey(II)V
    .locals 1
    .param p1, "gameKey"    # I
    .param p2, "keyCode"    # I

    .prologue
    .line 54
    if-ltz p2, :cond_0

    sget-object v0, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 55
    sget-object v0, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    aput p1, v0, p2

    .line 57
    :cond_0
    return-void
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "DeviceID":I
    sget-boolean v2, Lcom/androidemu/snes/input/Keyboard;->KeyMapFlag:Z

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Lcom/androidemu/snes/input/Keyboard;->GetUSBID(I)I

    move-result v0

    .line 164
    if-le v0, v4, :cond_0

    const/4 v0, 0x1

    .line 174
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisX:[[I

    aget-object v2, v2, v0

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v2, v5

    .line 175
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisY:[[I

    aget-object v2, v2, v0

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v2, v5

    .line 176
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisX:[[I

    aget-object v2, v2, v0

    const/16 v3, 0xf

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v2, v4

    .line 177
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisY:[[I

    aget-object v2, v2, v0

    const/16 v3, 0x10

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v2, v4

    .line 179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 239
    return v4

    .line 169
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_2

    .line 170
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    .restart local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisX:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    iget-object v3, p0, Lcom/androidemu/snes/input/Keyboard;->preAxisX:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    if-eq v2, v3, :cond_6

    .line 183
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisX:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-nez v2, :cond_a

    .line 185
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->preAxisX:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v4, :cond_4

    .line 186
    const/16 v2, 0x16

    invoke-virtual {p0, v0, v2, v4}, Lcom/androidemu/snes/input/Keyboard;->setKey(III)V

    .line 187
    :cond_4
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->preAxisX:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v6, :cond_5

    .line 188
    const/16 v2, 0x15

    invoke-virtual {p0, v0, v2, v4}, Lcom/androidemu/snes/input/Keyboard;->setKey(III)V

    .line 207
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->preAxisX:[[I

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisX:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    aput v3, v2, v1

    .line 209
    :cond_6
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisY:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    iget-object v3, p0, Lcom/androidemu/snes/input/Keyboard;->preAxisY:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    if-eq v2, v3, :cond_9

    .line 211
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisY:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-nez v2, :cond_c

    .line 213
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->preAxisY:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v4, :cond_7

    .line 214
    invoke-virtual {p0, v0, v8, v4}, Lcom/androidemu/snes/input/Keyboard;->setKey(III)V

    .line 215
    :cond_7
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->preAxisY:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v6, :cond_8

    .line 216
    invoke-virtual {p0, v0, v7, v4}, Lcom/androidemu/snes/input/Keyboard;->setKey(III)V

    .line 235
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->preAxisY:[[I

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisY:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    aput v3, v2, v1

    .line 179
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 192
    :cond_a
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisX:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v4, :cond_b

    .line 195
    const/16 v2, 0x16

    invoke-virtual {p0, v0, v2, v5}, Lcom/androidemu/snes/input/Keyboard;->setKey(III)V

    .line 196
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->preAxisX:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v6, :cond_b

    .line 197
    const/16 v2, 0x15

    invoke-virtual {p0, v0, v2, v4}, Lcom/androidemu/snes/input/Keyboard;->setKey(III)V

    .line 199
    :cond_b
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisX:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v6, :cond_5

    .line 202
    const/16 v2, 0x15

    invoke-virtual {p0, v0, v2, v5}, Lcom/androidemu/snes/input/Keyboard;->setKey(III)V

    .line 203
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->preAxisX:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v4, :cond_5

    .line 204
    const/16 v2, 0x16

    invoke-virtual {p0, v0, v2, v4}, Lcom/androidemu/snes/input/Keyboard;->setKey(III)V

    goto :goto_2

    .line 220
    :cond_c
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisY:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v4, :cond_d

    .line 223
    invoke-virtual {p0, v0, v8, v5}, Lcom/androidemu/snes/input/Keyboard;->setKey(III)V

    .line 224
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->preAxisY:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v6, :cond_d

    .line 225
    invoke-virtual {p0, v0, v7, v4}, Lcom/androidemu/snes/input/Keyboard;->setKey(III)V

    .line 227
    :cond_d
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->curAxisY:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v6, :cond_8

    .line 230
    invoke-virtual {p0, v0, v7, v5}, Lcom/androidemu/snes/input/Keyboard;->setKey(III)V

    .line 231
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->preAxisY:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v4, :cond_8

    .line 232
    invoke-virtual {p0, v0, v8, v4}, Lcom/androidemu/snes/input/Keyboard;->setKey(III)V

    goto :goto_3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v8, 0x1000010

    const/16 v7, 0x3000

    const/high16 v6, 0x10000

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 61
    sget-object v2, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    array-length v2, v2

    if-lt p2, v2, :cond_1

    move v3, v4

    .line 140
    :cond_0
    :goto_0
    return v3

    .line 64
    :cond_1
    const/4 v0, 0x0

    .line 65
    .local v0, "gameKey":I
    sget-boolean v2, Lcom/androidemu/snes/input/Keyboard;->KeyMapFlag:Z

    if-eqz v2, :cond_7

    .line 68
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Lcom/androidemu/snes/input/Keyboard;->GetUSBID(I)I

    move-result v2

    if-nez v2, :cond_4

    .line 69
    sget-object v2, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    or-int/lit16 v5, p2, 0x100

    aget v0, v2, v5

    .line 88
    :cond_2
    :goto_1
    if-eqz v0, :cond_f

    .line 90
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_9

    .line 91
    iget v2, p0, Lcom/androidemu/snes/input/Keyboard;->keyStates:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/androidemu/snes/input/Keyboard;->keyStates:I

    .line 95
    :goto_2
    iget-object v2, p0, Lcom/androidemu/snes/input/Keyboard;->gameKeyListener:Lcom/androidemu/snes/input/GameKeyListener;

    invoke-interface {v2}, Lcom/androidemu/snes/input/GameKeyListener;->onGameKeyChanged()V

    .line 98
    iget v2, p0, Lcom/androidemu/snes/input/Keyboard;->keyStates:I

    if-eq v2, v7, :cond_3

    iget v2, p0, Lcom/androidemu/snes/input/Keyboard;->keyStates:I

    shr-int/lit8 v2, v2, 0x10

    if-ne v2, v7, :cond_0

    .line 99
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getSources()I

    move-result v2

    and-int/lit16 v2, v2, 0x401

    const/16 v5, 0x401

    if-ne v2, v5, :cond_a

    move v2, v3

    .line 100
    :goto_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_b

    move v5, v3

    :goto_4
    or-int/2addr v2, v5

    if-eqz v2, :cond_0

    .line 102
    sput-boolean v4, Lcom/androidemu/snes/EmulatorActivity;->Exit:Z

    .line 103
    iput v4, p0, Lcom/androidemu/snes/input/Keyboard;->keyStates:I

    .line 104
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Pack:Ljava/lang/String;

    if-nez v2, :cond_d

    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Class:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 107
    const-string v2, "com.yy.powkiddy"

    const-string v5, "com.yy.powkiddy.activity.InfoDialog"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v2}, Lcom/androidemu/snes/EmulatorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 110
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v2, v1, v3}, Lcom/androidemu/snes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v2, v4, v4}, Lcom/androidemu/snes/EmulatorActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 72
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Lcom/androidemu/snes/input/Keyboard;->GetUSBID(I)I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 73
    sget-object v2, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    aget v0, v2, p2

    goto :goto_1

    .line 75
    :cond_5
    invoke-static {v4}, Lcom/androidemu/snes/input/Keyboard;->ChkUSBID(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/androidemu/snes/input/Keyboard;->KEY1P:Z

    if-eqz v2, :cond_2

    .line 76
    :cond_6
    sget-object v2, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    aget v0, v2, p2

    .line 78
    goto/16 :goto_1

    .line 82
    :cond_7
    sget v2, Lcom/androidemu/snes/DefaultPreferences;->USB1PID:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    if-ge v2, v6, :cond_8

    .line 83
    sget-object v2, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    or-int/lit16 v5, p2, 0x100

    aget v0, v2, v5

    goto/16 :goto_1

    .line 85
    :cond_8
    sget-object v2, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    aget v0, v2, p2

    goto/16 :goto_1

    .line 93
    :cond_9
    iget v2, p0, Lcom/androidemu/snes/input/Keyboard;->keyStates:I

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v2, v5

    iput v2, p0, Lcom/androidemu/snes/input/Keyboard;->keyStates:I

    goto/16 :goto_2

    :cond_a
    move v2, v4

    .line 99
    goto/16 :goto_3

    :cond_b
    move v5, v4

    .line 100
    goto :goto_4

    .line 115
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_c
    const-string v2, "com.vrt.launch"

    const-string v5, "com.vrt.launch.InfoDialog"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v2}, Lcom/androidemu/snes/EmulatorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 118
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v2, v1, v4}, Lcom/androidemu/snes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v2, v4, v4}, Lcom/androidemu/snes/EmulatorActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 125
    :cond_d
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Pack:Ljava/lang/String;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Class:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 127
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Pack:Ljava/lang/String;

    sget-object v5, Lcom/androidemu/snes/EmulatorActivity;->Class:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v2}, Lcom/androidemu/snes/EmulatorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 130
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v2, v1, v4}, Lcom/androidemu/snes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v2, v4, v4}, Lcom/androidemu/snes/EmulatorActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 136
    :cond_e
    sput-boolean v3, Lcom/androidemu/snes/EmulatorActivity;->Exit:Z

    goto/16 :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_f
    move v3, v4

    .line 140
    goto/16 :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidemu/snes/input/Keyboard;->keyStates:I

    .line 46
    return-void
.end method

.method public setKey(III)V
    .locals 3
    .param p1, "deviceId"    # I
    .param p2, "keyCode"    # I
    .param p3, "keyAction"    # I

    .prologue
    .line 145
    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 146
    sget-object v1, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    or-int/lit16 v2, p2, 0x100

    aget v0, v1, v2

    .line 149
    .local v0, "gameKey":I
    :goto_0
    if-eqz v0, :cond_0

    .line 150
    if-nez p3, :cond_2

    .line 151
    iget v1, p0, Lcom/androidemu/snes/input/Keyboard;->keyStates:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/androidemu/snes/input/Keyboard;->keyStates:I

    .line 155
    :goto_1
    iget-object v1, p0, Lcom/androidemu/snes/input/Keyboard;->gameKeyListener:Lcom/androidemu/snes/input/GameKeyListener;

    invoke-interface {v1}, Lcom/androidemu/snes/input/GameKeyListener;->onGameKeyChanged()V

    .line 157
    :cond_0
    return-void

    .line 148
    .end local v0    # "gameKey":I
    :cond_1
    sget-object v1, Lcom/androidemu/snes/input/Keyboard;->keysMap:[I

    aget v0, v1, p2

    .restart local v0    # "gameKey":I
    goto :goto_0

    .line 153
    :cond_2
    iget v1, p0, Lcom/androidemu/snes/input/Keyboard;->keyStates:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/androidemu/snes/input/Keyboard;->keyStates:I

    goto :goto_1
.end method
