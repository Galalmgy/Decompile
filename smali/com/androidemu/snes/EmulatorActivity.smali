.class public Lcom/androidemu/snes/EmulatorActivity;
.super Landroid/app/Activity;
.source "EmulatorActivity.java"

# interfaces
.implements Lcom/androidemu/Emulator$FrameUpdateListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/androidemu/EmulatorView$OnTrackballListener;
.implements Lcom/androidemu/Emulator$OnFrameDrawnListener;
.implements Lcom/androidemu/snes/input/GameKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;
    }
.end annotation


# static fields
.field public static Class:Ljava/lang/String; = null

.field private static final DIALOG_QUIT_GAME:I = 0x1

.field private static final DIALOG_REPLACE_GAME:I = 0x2

.field private static final DIALOG_WIFI_CONNECT:I = 0x3

.field public static Exit:Z = false

.field public static Filt:I = 0x0

.field private static final GAMEPAD_DIRECTION:I = 0xf00

.field private static final GAMEPAD_LEFT_RIGHT:I = 0x300

.field private static final GAMEPAD_UP_DOWN:I = 0xc00

.field public static Instance:Lcom/androidemu/snes/EmulatorActivity; = null

.field public static KeyTime:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "VSFC"

.field private static final MESSAGE_SYNC_CLIENT:I = 0x3e8

.field private static final NETPLAY_TCP_PORT:I = 0x14f9

.field public static Pack:Ljava/lang/String; = null

.field private static final REQUEST_BT_DEVICE:I = 0x5

.field private static final REQUEST_ENABLE_BT_CLIENT:I = 0x4

.field private static final REQUEST_ENABLE_BT_SERVER:I = 0x3

.field private static final REQUEST_LOAD_STATE:I = 0x1

.field private static final REQUEST_SAVE_STATE:I = 0x2

.field private static final SENSOR_MAP_DPAD:[I

.field private static final SENSOR_MAP_TRIGGERS:[I

.field public static User:I

.field public static prefs:Landroid/content/SharedPreferences;


# instance fields
.field private autoSyncClientInterval:I

.field private emulator:Lcom/androidemu/Emulator;

.field private emulatorView:Lcom/androidemu/EmulatorView;

.field private fastForwardKey:I

.field private fastForwardSpeed:F

.field private flipScreen:Z

.field private inFastForward:Z

.field private keyboard:Lcom/androidemu/snes/input/Keyboard;

.field private lightGunEnabled:Z

.field private mediaScanner:Lcom/androidemu/snes/MediaScanner;

.field private netPlayHandler:Landroid/os/Handler;

.field private netPlayService:Lcom/androidemu/snes/NetPlayService;

.field private newIntent:Landroid/content/Intent;

.field private quickLoadKey:I

.field private quickSaveKey:I

.field private screenshotKey:I

.field private sensor:Lcom/androidemu/snes/input/SensorKeypad;

.field private sensorMappings:[I

.field private sharedPrefs:Landroid/content/SharedPreferences;

.field private surfaceHeight:I

.field private surfaceRegion:Landroid/graphics/Rect;

.field private surfaceWidth:I

.field private trackballSensitivity:I

.field private vkeypad:Lcom/androidemu/snes/input/VirtualKeypad;

.field private waitDialog:Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 114
    sput v3, Lcom/androidemu/snes/EmulatorActivity;->KeyTime:I

    .line 118
    const/4 v0, 0x3

    sput v0, Lcom/androidemu/snes/EmulatorActivity;->Filt:I

    .line 119
    sput v2, Lcom/androidemu/snes/EmulatorActivity;->User:I

    .line 120
    sput-object v4, Lcom/androidemu/snes/EmulatorActivity;->Pack:Ljava/lang/String;

    .line 121
    sput-object v4, Lcom/androidemu/snes/EmulatorActivity;->Class:Ljava/lang/String;

    .line 122
    sput-boolean v2, Lcom/androidemu/snes/EmulatorActivity;->Exit:Z

    .line 908
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/androidemu/snes/EmulatorActivity;->SENSOR_MAP_DPAD:[I

    .line 915
    new-array v0, v1, [I

    .line 916
    const/16 v1, 0x20

    aput v1, v0, v3

    .line 917
    const/16 v1, 0x10

    aput v1, v0, v2

    .line 915
    sput-object v0, Lcom/androidemu/snes/EmulatorActivity;->SENSOR_MAP_TRIGGERS:[I

    .line 920
    return-void

    .line 908
    nop

    :array_0
    .array-data 4
        0x200
        0x100
        0x800
        0x400
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    .line 1123
    new-instance v0, Lcom/androidemu/snes/EmulatorActivity$1;

    invoke-direct {v0, p0}, Lcom/androidemu/snes/EmulatorActivity$1;-><init>(Lcom/androidemu/snes/EmulatorActivity;)V

    iput-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/snes/NetPlayService;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androidemu/snes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1337
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->applyNetplaySettings()V

    return-void
.end method

.method static synthetic access$10(Lcom/androidemu/snes/EmulatorActivity;Lcom/androidemu/snes/NetPlayService;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    return-void
.end method

.method static synthetic access$11(Lcom/androidemu/snes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1489
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->quickSave()V

    return-void
.end method

.method static synthetic access$12(Lcom/androidemu/snes/EmulatorActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->newIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$13(Lcom/androidemu/snes/EmulatorActivity;)Z
    .locals 1

    .prologue
    .line 1085
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->loadROM()Z

    move-result v0

    return v0
.end method

.method static synthetic access$14(Lcom/androidemu/snes/EmulatorActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/androidemu/snes/EmulatorActivity;->newIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$15(Lcom/androidemu/snes/EmulatorActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1237
    invoke-direct {p0, p1, p2}, Lcom/androidemu/snes/EmulatorActivity;->onWifiConnect(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16(Lcom/androidemu/snes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1195
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->ensureDiscoverable()V

    return-void
.end method

.method static synthetic access$2(Lcom/androidemu/snes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1302
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->onNetPlaySync()V

    return-void
.end method

.method static synthetic access$3(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/Emulator;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    return-object v0
.end method

.method static synthetic access$4(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->waitDialog:Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/androidemu/snes/EmulatorActivity;Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/androidemu/snes/EmulatorActivity;->waitDialog:Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    return-void
.end method

.method static synthetic access$6(Lcom/androidemu/snes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1311
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->onDisconnect()V

    return-void
.end method

.method static synthetic access$7(Lcom/androidemu/snes/EmulatorActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 1408
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->getTempStateFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Ljava/io/File;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1425
    invoke-static {p0, p1}, Lcom/androidemu/snes/EmulatorActivity;->writeFile(Ljava/io/File;[B)V

    return-void
.end method

.method static synthetic access$9(Lcom/androidemu/snes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1349
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->startAutoSyncClient()V

    return-void
.end method

.method private applyNetplaySettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1338
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v1, "enableGamepad2"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    .line 1339
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v1, "enableCheats"

    invoke-virtual {v0, v1, v3}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    .line 1340
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "maxFramesAhead"

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/snes/EmulatorActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "autoSyncClient"

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/snes/EmulatorActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1343
    iget-boolean v0, p0, Lcom/androidemu/snes/EmulatorActivity;->inFastForward:Z

    if-eqz v0, :cond_0

    .line 1344
    iput-boolean v3, p0, Lcom/androidemu/snes/EmulatorActivity;->inFastForward:Z

    .line 1345
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/androidemu/snes/EmulatorActivity;->setGameSpeed(F)V

    .line 1347
    :cond_0
    return-void
.end method

.method private checkBluetoothEnabled(I)Z
    .locals 2
    .param p1, "request"    # I

    .prologue
    .line 859
    invoke-static {}, Lcom/androidemu/snes/wrapper/Wrapper;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    const/4 v1, 0x1

    .line 864
    :goto_0
    return v1

    .line 862
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Lcom/androidemu/snes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 864
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->waitDialog:Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->waitDialog:Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    invoke-virtual {v0}, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->dismiss()V

    .line 1115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->waitDialog:Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    .line 1117
    :cond_0
    new-instance v0, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    invoke-direct {v0, p0}, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;-><init>(Lcom/androidemu/snes/EmulatorActivity;)V

    iput-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->waitDialog:Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    .line 1118
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->waitDialog:Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    invoke-virtual {v0, p1}, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1119
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->waitDialog:Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    invoke-virtual {v0, p2}, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1120
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->waitDialog:Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    return-object v0
.end method

.method private createQuitGameDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1007
    new-instance v0, Lcom/androidemu/snes/EmulatorActivity$2;

    invoke-direct {v0, p0}, Lcom/androidemu/snes/EmulatorActivity$2;-><init>(Lcom/androidemu/snes/EmulatorActivity;)V

    .line 1020
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1021
    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1022
    const v2, 0x7f06000b

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1023
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1020
    return-object v1
.end method

.method private createReplaceGameDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1028
    new-instance v0, Lcom/androidemu/snes/EmulatorActivity$3;

    invoke-direct {v0, p0}, Lcom/androidemu/snes/EmulatorActivity$3;-><init>(Lcom/androidemu/snes/EmulatorActivity;)V

    .line 1038
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1039
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1040
    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1041
    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1042
    const v2, 0x1040013

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1043
    const v2, 0x1040009

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1044
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1038
    return-object v1
.end method

.method private createWifiConnectDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1049
    new-instance v0, Lcom/androidemu/snes/EmulatorActivity$4;

    invoke-direct {v0, p0}, Lcom/androidemu/snes/EmulatorActivity$4;-><init>(Lcom/androidemu/snes/EmulatorActivity;)V

    .line 1060
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1061
    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1062
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1063
    const v3, 0x7f03000b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1062
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1064
    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1065
    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1066
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1060
    return-object v1
.end method

.method private ensureDiscoverable()V
    .locals 2

    .prologue
    .line 1196
    invoke-static {}, Lcom/androidemu/snes/wrapper/Wrapper;->isBluetoothDiscoverable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1197
    new-instance v0, Landroid/content/Intent;

    .line 1198
    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    .line 1197
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1199
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androidemu/snes/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    .line 1201
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private flipGameKeys(I)I
    .locals 2
    .param p1, "keys"    # I

    .prologue
    .line 877
    and-int/lit16 v0, p1, -0xf01

    .line 878
    .local v0, "newKeys":I
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_0

    .line 879
    or-int/lit16 v0, v0, 0x100

    .line 880
    :cond_0
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_1

    .line 881
    or-int/lit16 v0, v0, 0x200

    .line 882
    :cond_1
    and-int/lit16 v1, p1, 0x800

    if-eqz v1, :cond_2

    .line 883
    or-int/lit16 v0, v0, 0x400

    .line 884
    :cond_2
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_3

    .line 885
    or-int/lit16 v0, v0, 0x800

    .line 887
    :cond_3
    return v0
.end method

.method private getEmulatorEngine(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 931
    const-string v0, "useCCore"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "snes_comp"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "snes"

    goto :goto_0
.end method

.method private getQuickSlotFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1486
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->getROMFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androidemu/snes/StateSlotsActivity;->getSlotFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getROMFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSavFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 1562
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1563
    .local v2, "sav":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/mnt/sdcard/VKEY.csv"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1565
    .local v0, "csv":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1566
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/mnt/sdcard/VSFC/sta/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1569
    .local v1, "path":Ljava/lang/String;
    :goto_0
    const-string v3, "VSFC"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSavFile:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    return-object v1

    .line 1568
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    const-string v3, "roms"

    const-string v4, "sta"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getScalingMode(Ljava/lang/String;)I
    .locals 1
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 891
    const-string v0, "original"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    const/4 v0, 0x0

    .line 897
    :goto_0
    return v0

    .line 893
    :cond_0
    const-string v0, "2x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    const/4 v0, 0x1

    goto :goto_0

    .line 895
    :cond_1
    const-string v0, "proportional"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 896
    const/4 v0, 0x2

    goto :goto_0

    .line 897
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static getScreenOrientation(Ljava/lang/String;)I
    .locals 1
    .param p0, "orientation"    # Ljava/lang/String;

    .prologue
    .line 901
    const-string v0, "landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    const/4 v0, 0x0

    .line 905
    :goto_0
    return v0

    .line 903
    :cond_0
    const-string v0, "portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    const/4 v0, 0x1

    goto :goto_0

    .line 905
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getScreenshot()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 1474
    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4}, Lcom/androidemu/Emulator;->getVideoWidth()I

    move-result v3

    .line 1475
    .local v3, "w":I
    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4}, Lcom/androidemu/Emulator;->getVideoHeight()I

    move-result v2

    .line 1477
    .local v2, "h":I
    mul-int v4, v3, v2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1478
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4, v1}, Lcom/androidemu/Emulator;->getScreenshot(Ljava/nio/Buffer;)V

    .line 1480
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1481
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1482
    return-object v0
.end method

.method private static getSensorMappings(Ljava/lang/String;)[I
    .locals 1
    .param p0, "as"    # Ljava/lang/String;

    .prologue
    .line 923
    const-string v0, "dpad"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    sget-object v0, Lcom/androidemu/snes/EmulatorActivity;->SENSOR_MAP_DPAD:[I

    .line 927
    :goto_0
    return-object v0

    .line 925
    :cond_0
    const-string v0, "triggers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    sget-object v0, Lcom/androidemu/snes/EmulatorActivity;->SENSOR_MAP_TRIGGERS:[I

    goto :goto_0

    .line 927
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTempStateFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 1409
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "saved_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isROMSupported(Ljava/lang/String;)Z
    .locals 6
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1074
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1076
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1077
    const/high16 v4, 0x7f060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1078
    .local v1, "filters":[Ljava/lang/String;
    array-length v4, v1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 1082
    :goto_1
    return v2

    .line 1078
    :cond_0
    aget-object v0, v1, v3

    .line 1079
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1080
    const/4 v2, 0x1

    goto :goto_1

    .line 1078
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private loadKeyBindings(Landroid/content/SharedPreferences;)V
    .locals 10
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v9, 0x0

    .line 939
    sget-object v2, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    .line 941
    .local v2, "gameKeys":[I
    sget-object v3, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    .line 942
    .local v3, "gameKeysPref":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-lt v4, v5, :cond_2

    .line 946
    sget-object v3, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    .line 947
    const/4 v4, 0x0

    :goto_1
    array-length v5, v3

    if-lt v4, v5, :cond_3

    .line 952
    invoke-static {p0}, Lcom/androidemu/snes/DefaultPreferences;->getKeyMappings(Landroid/content/Context;)[I

    move-result-object v0

    .line 953
    .local v0, "defaultKeys":[I
    invoke-static {p0}, Lcom/androidemu/snes/DefaultPreferences;->getPadMappings(Landroid/content/Context;)[I

    move-result-object v1

    .line 955
    .local v1, "defaultPads":[I
    invoke-static {}, Lcom/androidemu/snes/input/Keyboard;->initKeyMap()Z

    move-result v5

    sput-boolean v5, Lcom/androidemu/snes/input/Keyboard;->KeyMapFlag:Z

    .line 957
    invoke-static {}, Lcom/androidemu/snes/input/Keyboard;->initUSBKey()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 959
    sget-object v3, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    .line 960
    const/4 v4, 0x0

    :goto_2
    array-length v5, v3

    if-lt v4, v5, :cond_4

    .line 964
    sget-object v3, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    .line 965
    const/4 v4, 0x0

    :goto_3
    array-length v5, v3

    if-lt v4, v5, :cond_5

    .line 983
    :cond_0
    invoke-static {}, Lcom/androidemu/snes/input/Keyboard;->initGIOKey()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 985
    sget-object v3, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    .line 986
    const/4 v4, 0x0

    :goto_4
    array-length v5, v3

    if-lt v4, v5, :cond_8

    .line 990
    sget-object v3, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    .line 991
    const/4 v4, 0x0

    :goto_5
    array-length v5, v3

    if-lt v4, v5, :cond_9

    .line 997
    :cond_1
    iget-object v5, p0, Lcom/androidemu/snes/EmulatorActivity;->keyboard:Lcom/androidemu/snes/input/Keyboard;

    const/4 v6, 0x1

    .line 998
    const-string v7, "gamepad_superscope_turbo"

    invoke-interface {p1, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 997
    invoke-virtual {v5, v6, v7}, Lcom/androidemu/snes/input/Keyboard;->mapKey(II)V

    .line 999
    iget-object v5, p0, Lcom/androidemu/snes/EmulatorActivity;->keyboard:Lcom/androidemu/snes/input/Keyboard;

    const/4 v6, 0x2

    .line 1000
    const-string v7, "gamepad_superscope_pause"

    invoke-interface {p1, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 999
    invoke-virtual {v5, v6, v7}, Lcom/androidemu/snes/input/Keyboard;->mapKey(II)V

    .line 1001
    iget-object v5, p0, Lcom/androidemu/snes/EmulatorActivity;->keyboard:Lcom/androidemu/snes/input/Keyboard;

    const/4 v6, 0x4

    .line 1002
    const-string v7, "gamepad_superscope_cursor"

    invoke-interface {p1, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1001
    invoke-virtual {v5, v6, v7}, Lcom/androidemu/snes/input/Keyboard;->mapKey(II)V

    .line 1003
    return-void

    .line 943
    .end local v0    # "defaultKeys":[I
    .end local v1    # "defaultPads":[I
    :cond_2
    iget-object v5, p0, Lcom/androidemu/snes/EmulatorActivity;->keyboard:Lcom/androidemu/snes/input/Keyboard;

    aget v6, v2, v4

    .line 944
    aget-object v7, v3, v4

    sget-object v8, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    aget v8, v8, v4

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 943
    invoke-virtual {v5, v6, v7}, Lcom/androidemu/snes/input/Keyboard;->mapKey(II)V

    .line 942
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 948
    :cond_3
    iget-object v5, p0, Lcom/androidemu/snes/EmulatorActivity;->keyboard:Lcom/androidemu/snes/input/Keyboard;

    aget v6, v2, v4

    shl-int/lit8 v6, v6, 0x10

    .line 949
    aget-object v7, v3, v4

    sget-object v8, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    aget v8, v8, v4

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 948
    invoke-virtual {v5, v6, v7}, Lcom/androidemu/snes/input/Keyboard;->mapKey(II)V

    .line 947
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 961
    .restart local v0    # "defaultKeys":[I
    .restart local v1    # "defaultPads":[I
    :cond_4
    iget-object v5, p0, Lcom/androidemu/snes/EmulatorActivity;->keyboard:Lcom/androidemu/snes/input/Keyboard;

    aget v6, v2, v4

    .line 962
    aget-object v7, v3, v4

    aget v8, v0, v4

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 961
    invoke-virtual {v5, v6, v7}, Lcom/androidemu/snes/input/Keyboard;->mapKey(II)V

    .line 960
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 966
    :cond_5
    iget-object v5, p0, Lcom/androidemu/snes/EmulatorActivity;->keyboard:Lcom/androidemu/snes/input/Keyboard;

    aget v6, v2, v4

    shl-int/lit8 v6, v6, 0x10

    .line 967
    aget-object v7, v3, v4

    aget v8, v1, v4

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 966
    invoke-virtual {v5, v6, v7}, Lcom/androidemu/snes/input/Keyboard;->mapKey(II)V

    .line 965
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 972
    :cond_6
    sget-object v3, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    .line 973
    const/4 v4, 0x0

    :goto_6
    array-length v5, v3

    if-lt v4, v5, :cond_7

    .line 977
    sget-object v3, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    .line 978
    const/4 v4, 0x0

    :goto_7
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 979
    iget-object v5, p0, Lcom/androidemu/snes/EmulatorActivity;->keyboard:Lcom/androidemu/snes/input/Keyboard;

    aget v6, v2, v4

    shl-int/lit8 v6, v6, 0x10

    .line 980
    aget-object v7, v3, v4

    aget v8, v1, v4

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 979
    invoke-virtual {v5, v6, v7}, Lcom/androidemu/snes/input/Keyboard;->mapKey(II)V

    .line 978
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 974
    :cond_7
    iget-object v5, p0, Lcom/androidemu/snes/EmulatorActivity;->keyboard:Lcom/androidemu/snes/input/Keyboard;

    aget v6, v2, v4

    .line 975
    aget-object v7, v3, v4

    aget v8, v0, v4

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 974
    invoke-virtual {v5, v6, v7}, Lcom/androidemu/snes/input/Keyboard;->mapKey(II)V

    .line 973
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 987
    :cond_8
    iget-object v5, p0, Lcom/androidemu/snes/EmulatorActivity;->keyboard:Lcom/androidemu/snes/input/Keyboard;

    aget v6, v2, v4

    .line 988
    aget-object v7, v3, v4

    aget v8, v0, v4

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 987
    invoke-virtual {v5, v6, v7}, Lcom/androidemu/snes/input/Keyboard;->mapKey(II)V

    .line 986
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 992
    :cond_9
    iget-object v5, p0, Lcom/androidemu/snes/EmulatorActivity;->keyboard:Lcom/androidemu/snes/input/Keyboard;

    aget v6, v2, v4

    shl-int/lit8 v6, v6, 0x10

    .line 993
    aget-object v7, v3, v4

    aget v8, v1, v4

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 992
    invoke-virtual {v5, v6, v7}, Lcom/androidemu/snes/input/Keyboard;->mapKey(II)V

    .line 991
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5
.end method

.method private loadROM()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1086
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->getROMFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/androidemu/snes/EmulatorActivity;->isROMSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1089
    const v2, 0x7f07000d

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1090
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1091
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->finish()V

    .line 1108
    :goto_0
    return v1

    .line 1094
    :cond_0
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v3, v0}, Lcom/androidemu/Emulator;->loadROM(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1095
    const v2, 0x7f07000c

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1096
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1097
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->finish()V

    goto :goto_0

    .line 1101
    :cond_1
    iput-boolean v1, p0, Lcom/androidemu/snes/EmulatorActivity;->inFastForward:Z

    .line 1103
    iget-object v1, p0, Lcom/androidemu/snes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    .line 1104
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v3}, Lcom/androidemu/Emulator;->getVideoWidth()I

    move-result v3

    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4}, Lcom/androidemu/Emulator;->getVideoHeight()I

    move-result v4

    .line 1103
    invoke-virtual {v1, v3, v4}, Lcom/androidemu/EmulatorView;->setActualSize(II)V

    .line 1106
    iget-object v1, p0, Lcom/androidemu/snes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "quickLoadOnStart"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1107
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->quickLoad()V

    :cond_2
    move v1, v2

    .line 1108
    goto :goto_0
.end method

.method private loadState(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1459
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1460
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1471
    :goto_0
    return-void

    .line 1463
    :cond_0
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->pauseEmulator()V

    .line 1465
    :try_start_0
    iget-object v1, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    if-eqz v1, :cond_1

    .line 1466
    iget-object v1, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    invoke-static {v0}, Lcom/androidemu/snes/EmulatorActivity;->readFile(Ljava/io/File;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidemu/snes/NetPlayService;->sendSavedState([B)V

    .line 1467
    :cond_1
    iget-object v1, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v1, p1}, Lcom/androidemu/Emulator;->loadState(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    :goto_1
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->resumeEmulator()V

    goto :goto_0

    .line 1469
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static makeKeyStates(II)I
    .locals 2
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .prologue
    .line 569
    shl-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    return v0
.end method

.method private onBluetoothClient()V
    .locals 2

    .prologue
    .line 1298
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/snes/DeviceListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1299
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/snes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1300
    return-void
.end method

.method private onBluetoothConnect(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1287
    :try_start_0
    new-instance v1, Lcom/androidemu/snes/NetPlayService;

    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/androidemu/snes/NetPlayService;-><init>(Landroid/os/Handler;)V

    .line 1288
    .local v1, "np":Lcom/androidemu/snes/NetPlayService;
    invoke-virtual {v1, p1}, Lcom/androidemu/snes/NetPlayService;->bluetoothConnect(Ljava/lang/String;)V

    .line 1289
    iput-object v1, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    const v2, 0x7f07001d

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/EmulatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1294
    const v3, 0x7f07002c

    invoke-virtual {p0, v3}, Lcom/androidemu/snes/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1293
    invoke-direct {p0, v2, v3}, Lcom/androidemu/snes/EmulatorActivity;->createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v2

    .line 1294
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1295
    .end local v1    # "np":Lcom/androidemu/snes/NetPlayService;
    :goto_0
    return-void

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private onBluetoothServer()V
    .locals 4

    .prologue
    .line 1267
    :try_start_0
    new-instance v1, Lcom/androidemu/snes/NetPlayService;

    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/androidemu/snes/NetPlayService;-><init>(Landroid/os/Handler;)V

    .line 1268
    .local v1, "np":Lcom/androidemu/snes/NetPlayService;
    invoke-virtual {v1}, Lcom/androidemu/snes/NetPlayService;->bluetoothListen()V

    .line 1269
    iput-object v1, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1274
    const v2, 0x7f07001c

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/EmulatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1275
    const v3, 0x7f07002d

    invoke-virtual {p0, v3}, Lcom/androidemu/snes/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1274
    invoke-direct {p0, v2, v3}, Lcom/androidemu/snes/EmulatorActivity;->createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    .line 1276
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->waitDialog:Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    .line 1277
    new-instance v3, Lcom/androidemu/snes/EmulatorActivity$5;

    invoke-direct {v3, p0}, Lcom/androidemu/snes/EmulatorActivity$5;-><init>(Lcom/androidemu/snes/EmulatorActivity;)V

    .line 1276
    invoke-virtual {v2, v3}, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1282
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->waitDialog:Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    invoke-virtual {v2}, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->show()V

    .line 1283
    .end local v1    # "np":Lcom/androidemu/snes/NetPlayService;
    :goto_0
    return-void

    .line 1270
    :catch_0
    move-exception v0

    .line 1271
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private onDisconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1312
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    if-nez v0, :cond_0

    .line 1322
    :goto_0
    return-void

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableCheats"

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/snes/EmulatorActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableGamepad2"

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/snes/EmulatorActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1317
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->stopAutoSyncClient()V

    .line 1319
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0, v2}, Lcom/androidemu/Emulator;->setFrameUpdateListener(Lcom/androidemu/Emulator$FrameUpdateListener;)V

    .line 1320
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    invoke-virtual {v0}, Lcom/androidemu/snes/NetPlayService;->disconnect()V

    .line 1321
    iput-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    goto :goto_0
.end method

.method private onFastForward()V
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    if-eqz v0, :cond_0

    .line 1371
    :goto_0
    return-void

    .line 1369
    :cond_0
    iget-boolean v0, p0, Lcom/androidemu/snes/EmulatorActivity;->inFastForward:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/androidemu/snes/EmulatorActivity;->inFastForward:Z

    .line 1370
    iget-boolean v0, p0, Lcom/androidemu/snes/EmulatorActivity;->inFastForward:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/androidemu/snes/EmulatorActivity;->fastForwardSpeed:F

    :goto_2
    invoke-direct {p0, v0}, Lcom/androidemu/snes/EmulatorActivity;->setGameSpeed(F)V

    goto :goto_0

    .line 1369
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 1370
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method private onLoadState()V
    .locals 2

    .prologue
    .line 1325
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/snes/StateSlotsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1326
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1327
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/snes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1328
    return-void
.end method

.method private onNetPlaySync()V
    .locals 3

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->getTempStateFile()Ljava/io/File;

    move-result-object v0

    .line 1305
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v1, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidemu/Emulator;->saveState(Ljava/lang/String;)Z

    .line 1306
    iget-object v1, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    invoke-static {v0}, Lcom/androidemu/snes/EmulatorActivity;->readFile(Ljava/io/File;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidemu/snes/NetPlayService;->sendSavedState([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1309
    return-void

    .line 1307
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onSaveState()V
    .locals 3

    .prologue
    .line 1331
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/snes/StateSlotsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1332
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1333
    const-string v1, "saveMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1334
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/snes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1335
    return-void
.end method

.method private onScreenshot()V
    .locals 9

    .prologue
    .line 1374
    new-instance v1, Ljava/io/File;

    const-string v6, "/sdcard/screenshot"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1375
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1376
    const-string v6, "VSFC"

    const-string v7, "Could not create directory for screenshots"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :goto_0
    return-void

    .line 1379
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1380
    .local v3, "name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1382
    .local v2, "file":Ljava/io/File;
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->pauseEmulator()V

    .line 1384
    const/4 v4, 0x0

    .line 1387
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1388
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1389
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1390
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1392
    const v6, 0x7f070022

    .line 1393
    const/4 v7, 0x0

    .line 1392
    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 1393
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1395
    iget-object v6, p0, Lcom/androidemu/snes/EmulatorActivity;->mediaScanner:Lcom/androidemu/snes/MediaScanner;

    if-nez v6, :cond_1

    .line 1396
    new-instance v6, Lcom/androidemu/snes/MediaScanner;

    invoke-direct {v6, p0}, Lcom/androidemu/snes/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/androidemu/snes/EmulatorActivity;->mediaScanner:Lcom/androidemu/snes/MediaScanner;

    .line 1397
    :cond_1
    iget-object v6, p0, Lcom/androidemu/snes/EmulatorActivity;->mediaScanner:Lcom/androidemu/snes/MediaScanner;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "image/png"

    invoke-virtual {v6, v7, v8}, Lcom/androidemu/snes/MediaScanner;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1400
    if-eqz v5, :cond_3

    .line 1401
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v5

    .line 1405
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :goto_1
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->resumeEmulator()V

    goto :goto_0

    .line 1399
    :catchall_0
    move-exception v6

    .line 1400
    :goto_2
    if-eqz v4, :cond_2

    .line 1401
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1402
    :cond_2
    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1403
    :catch_0
    move-exception v6

    goto :goto_1

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 1399
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_3
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private onWifiConnect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "portStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1238
    const/4 v0, 0x0

    .line 1240
    .local v0, "addr":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1241
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1243
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1244
    const v2, 0x7f070030

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1245
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1263
    :goto_1
    return-void

    .line 1249
    :cond_1
    const/4 v1, 0x0

    .line 1251
    .local v1, "port":I
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 1253
    :goto_2
    if-gtz v1, :cond_2

    .line 1254
    const v2, 0x7f070031

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1255
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1258
    :cond_2
    new-instance v2, Lcom/androidemu/snes/NetPlayService;

    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/androidemu/snes/NetPlayService;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    .line 1259
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    invoke-virtual {v2, v0, v1}, Lcom/androidemu/snes/NetPlayService;->tcpConnect(Ljava/net/InetAddress;I)V

    .line 1261
    const v2, 0x7f07001b

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/EmulatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1262
    const v3, 0x7f07002c

    invoke-virtual {p0, v3}, Lcom/androidemu/snes/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1261
    invoke-direct {p0, v2, v3}, Lcom/androidemu/snes/EmulatorActivity;->createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v2

    .line 1262
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 1252
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1242
    .end local v1    # "port":I
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private onWifiServer()V
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 1204
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/androidemu/snes/EmulatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 1205
    .local v6, "wifi":Landroid/net/wifi/WifiManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 1206
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    .line 1207
    .local v3, "ip":I
    :goto_1
    if-nez v3, :cond_2

    .line 1208
    const v8, 0x7f07002a

    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 1209
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1235
    :goto_2
    return-void

    .line 1205
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    .end local v3    # "ip":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    move v3, v7

    .line 1206
    goto :goto_1

    .line 1213
    .restart local v3    # "ip":I
    :cond_2
    const/4 v0, 0x0

    .line 1215
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v8, 0x4

    :try_start_0
    new-array v8, v8, [B

    const/4 v9, 0x0

    .line 1216
    int-to-byte v10, v3

    aput-byte v10, v8, v9

    const/4 v9, 0x1

    .line 1217
    ushr-int/lit8 v10, v3, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x2

    .line 1218
    ushr-int/lit8 v10, v3, 0x10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x3

    .line 1219
    ushr-int/lit8 v10, v3, 0x18

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1215
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1223
    :goto_3
    const/16 v5, 0x14f9

    .line 1225
    .local v5, "port":I
    :try_start_1
    new-instance v4, Lcom/androidemu/snes/NetPlayService;

    iget-object v8, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    invoke-direct {v4, v8}, Lcom/androidemu/snes/NetPlayService;-><init>(Landroid/os/Handler;)V

    .line 1226
    .local v4, "np":Lcom/androidemu/snes/NetPlayService;
    invoke-virtual {v4, v0, v5}, Lcom/androidemu/snes/NetPlayService;->tcpListen(Ljava/net/InetAddress;I)I

    move-result v5

    .line 1227
    iput-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1232
    const v8, 0x7f07001a

    invoke-virtual {p0, v8}, Lcom/androidemu/snes/EmulatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1233
    const v9, 0x7f07002b

    new-array v10, v11, [Ljava/lang/Object;

    .line 1234
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v12

    .line 1233
    invoke-virtual {p0, v9, v10}, Lcom/androidemu/snes/EmulatorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1232
    invoke-direct {p0, v8, v7}, Lcom/androidemu/snes/EmulatorActivity;->createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v7

    .line 1234
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 1228
    .end local v4    # "np":Lcom/androidemu/snes/NetPlayService;
    :catch_0
    move-exception v1

    .line 1229
    .local v1, "e":Ljava/io/IOException;
    goto :goto_2

    .line 1221
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "port":I
    :catch_1
    move-exception v8

    goto :goto_3
.end method

.method private pauseEmulator()V
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->pause()V

    .line 851
    return-void
.end method

.method private quickLoad()V
    .locals 1

    .prologue
    .line 1494
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->getQuickSlotFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidemu/snes/EmulatorActivity;->loadState(Ljava/lang/String;)V

    .line 1495
    return-void
.end method

.method private quickSave()V
    .locals 1

    .prologue
    .line 1490
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->getQuickSlotFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidemu/snes/EmulatorActivity;->saveState(Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method private static readFile(Ljava/io/File;)[B
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1414
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1415
    .local v1, "in":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 1417
    .local v0, "buffer":[B
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1418
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    :catchall_0
    move-exception v2

    .line 1420
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1421
    throw v2

    .line 1420
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1422
    return-object v0
.end method

.method private resumeEmulator()V
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->resume()V

    .line 856
    :cond_0
    return-void
.end method

.method private saveState(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1436
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->pauseEmulator()V

    .line 1438
    const/4 v1, 0x0

    .line 1441
    .local v1, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 1442
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1441
    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1443
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .local v2, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipEntry;

    const-string v4, "screenshot.png"

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1445
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1446
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1447
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1449
    if-eqz v2, :cond_1

    .line 1450
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 1454
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    :goto_0
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v3, p1}, Lcom/androidemu/Emulator;->saveState(Ljava/lang/String;)Z

    .line 1455
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->resumeEmulator()V

    .line 1456
    return-void

    .line 1448
    :catchall_0
    move-exception v3

    .line 1449
    :goto_1
    if-eqz v1, :cond_0

    .line 1450
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1451
    :cond_0
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1452
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_0

    .line 1448
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_1

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :cond_1
    move-object v1, v2

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_0
.end method

.method public static screenShotByShell(Ljava/lang/String;)V
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1531
    const/4 v3, 0x0

    .line 1532
    .local v3, "process":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 1533
    .local v1, "os":Ljava/io/DataOutputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "screencap -p "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1536
    .local v4, "shotCmd":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1537
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1538
    .end local v1    # "os":Ljava/io/DataOutputStream;
    .local v2, "os":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1539
    const-string v5, "exit\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1541
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1547
    if-eqz v2, :cond_0

    .line 1549
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1554
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 1555
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_1
    move-object v1, v2

    .line 1558
    .end local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v1    # "os":Ljava/io/DataOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1547
    if-eqz v1, :cond_3

    .line 1549
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1554
    :cond_3
    :goto_3
    if-eqz v3, :cond_2

    .line 1555
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    .line 1550
    :catch_1
    move-exception v0

    .line 1551
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1544
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1545
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1547
    if-eqz v1, :cond_4

    .line 1549
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1554
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    :goto_5
    if-eqz v3, :cond_2

    .line 1555
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    .line 1550
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v0

    .line 1551
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1546
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1547
    :goto_6
    if-eqz v1, :cond_5

    .line 1549
    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1554
    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    .line 1555
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 1557
    :cond_6
    throw v5

    .line 1550
    :catch_4
    move-exception v0

    .line 1551
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 1550
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v0

    .line 1551
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1546
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v1    # "os":Ljava/io/DataOutputStream;
    goto :goto_6

    .line 1544
    .end local v1    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v1    # "os":Ljava/io/DataOutputStream;
    goto :goto_4

    .line 1542
    .end local v1    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v1    # "os":Ljava/io/DataOutputStream;
    goto :goto_2
.end method

.method private setFlipScreen(Landroid/content/SharedPreferences;Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 868
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 869
    const-string v0, "flipScreen"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/androidemu/snes/EmulatorActivity;->flipScreen:Z

    .line 873
    :goto_0
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v1, "flipScreen"

    iget-boolean v2, p0, Lcom/androidemu/snes/EmulatorActivity;->flipScreen:Z

    invoke-virtual {v0, v1, v2}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    .line 874
    return-void

    .line 871
    :cond_0
    iput-boolean v2, p0, Lcom/androidemu/snes/EmulatorActivity;->flipScreen:Z

    goto :goto_0
.end method

.method private setGameSpeed(F)V
    .locals 3
    .param p1, "speed"    # F

    .prologue
    .line 1360
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->pauseEmulator()V

    .line 1361
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v1, "gameSpeed"

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->resumeEmulator()V

    .line 1363
    return-void
.end method

.method private startAutoSyncClient()V
    .locals 4

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    .line 1351
    iget-object v1, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1352
    iget v2, p0, Lcom/androidemu/snes/EmulatorActivity;->autoSyncClientInterval:I

    int-to-long v2, v2

    .line 1350
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1353
    return-void
.end method

.method private stopAutoSyncClient()V
    .locals 2

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1357
    return-void
.end method

.method private static writeFile(Ljava/io/File;[B)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1427
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1429
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1433
    return-void

    .line 1430
    :catchall_0
    move-exception v1

    .line 1431
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1432
    throw v1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x22

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 481
    if-ne p1, v7, :cond_0

    .line 482
    if-ne p2, v7, :cond_0

    .line 484
    sput-boolean v7, Lcom/androidemu/snes/EmulatorActivity;->Exit:Z

    .line 485
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "menu"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 486
    .local v1, "menu":I
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "slot"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 487
    .local v3, "slot":I
    packed-switch v1, :pswitch_data_0

    .line 523
    .end local v1    # "menu":I
    .end local v3    # "slot":I
    :cond_0
    :goto_0
    :pswitch_0
    if-nez p1, :cond_1

    .line 524
    if-ne p2, v7, :cond_1

    .line 526
    sput-boolean v7, Lcom/androidemu/snes/EmulatorActivity;->Exit:Z

    .line 527
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "menu"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 528
    .restart local v1    # "menu":I
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "slot"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 529
    .restart local v3    # "slot":I
    packed-switch v1, :pswitch_data_1

    .line 564
    .end local v1    # "menu":I
    .end local v3    # "slot":I
    :cond_1
    :goto_1
    :pswitch_1
    const/4 v4, 0x2

    if-ge p1, v4, :cond_2

    .line 565
    sget-object v4, Lcom/androidemu/snes/EmulatorActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v4}, Lcom/androidemu/snes/EmulatorActivity;->loadKeyBindings(Landroid/content/SharedPreferences;)V

    .line 566
    :cond_2
    return-void

    .line 490
    .restart local v1    # "menu":I
    .restart local v3    # "slot":I
    :pswitch_2
    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4}, Lcom/androidemu/Emulator;->reset()V

    goto :goto_0

    .line 493
    :pswitch_3
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->pauseEmulator()V

    .line 494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/androidemu/snes/EmulatorActivity;->getSavFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/androidemu/snes/EmulatorActivity;->screenShotByShell(Ljava/lang/String;)V

    .line 496
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".sav"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/androidemu/snes/EmulatorActivity;->getSavFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .local v2, "save":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 498
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 503
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".sav"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/androidemu/snes/EmulatorActivity;->getSavFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/androidemu/Emulator;->saveState(Ljava/lang/String;)Z

    .line 504
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->resumeEmulator()V

    goto/16 :goto_0

    .line 500
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 501
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 507
    .end local v2    # "save":Ljava/io/File;
    :pswitch_4
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->pauseEmulator()V

    .line 508
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".sav"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/androidemu/snes/EmulatorActivity;->getSavFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v0, "load":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 510
    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".sav"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/androidemu/snes/EmulatorActivity;->getSavFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/androidemu/Emulator;->loadState(Ljava/lang/String;)Z

    .line 511
    :cond_5
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->resumeEmulator()V

    goto/16 :goto_0

    .line 514
    .end local v0    # "load":Ljava/io/File;
    :pswitch_5
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->finish()V

    .line 515
    invoke-virtual {p0, v8, v8}, Lcom/androidemu/snes/EmulatorActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 532
    :pswitch_6
    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4}, Lcom/androidemu/Emulator;->reset()V

    goto/16 :goto_1

    .line 535
    :pswitch_7
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->pauseEmulator()V

    .line 537
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".sav"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/androidemu/snes/EmulatorActivity;->getSavFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 538
    .restart local v2    # "save":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 539
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 544
    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".sav"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/androidemu/snes/EmulatorActivity;->getSavFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/androidemu/Emulator;->saveState(Ljava/lang/String;)Z

    .line 545
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->resumeEmulator()V

    goto/16 :goto_1

    .line 541
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 542
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_3

    .line 548
    .end local v2    # "save":Ljava/io/File;
    :pswitch_8
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->pauseEmulator()V

    .line 549
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".sav"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/androidemu/snes/EmulatorActivity;->getSavFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    .restart local v0    # "load":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 551
    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".sav"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/androidemu/snes/EmulatorActivity;->getSavFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/androidemu/Emulator;->loadState(Ljava/lang/String;)Z

    .line 552
    :cond_8
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->resumeEmulator()V

    goto/16 :goto_1

    .line 555
    .end local v0    # "load":Ljava/io/File;
    :pswitch_9
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->finish()V

    .line 556
    invoke-virtual {p0, v8, v8}, Lcom/androidemu/snes/EmulatorActivity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 487
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 529
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 251
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0, p1}, Lcom/androidemu/snes/EmulatorActivity;->setFlipScreen(Landroid/content/SharedPreferences;Landroid/content/res/Configuration;)V

    .line 252
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    sput-object p0, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    .line 130
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->finish()V

    .line 209
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 135
    invoke-virtual {p0, v6}, Lcom/androidemu/snes/EmulatorActivity;->requestWindowFeature(I)Z

    .line 136
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 137
    const/16 v4, 0x1006

    .line 136
    invoke-virtual {v2, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 140
    invoke-virtual {p0, v7}, Lcom/androidemu/snes/EmulatorActivity;->setVolumeControlStream(I)V

    .line 142
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 144
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    sput-object v2, Lcom/androidemu/snes/EmulatorActivity;->prefs:Landroid/content/SharedPreferences;

    .line 146
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 148
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 149
    sget-object v4, Lcom/androidemu/snes/EmulatorActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v4}, Lcom/androidemu/snes/EmulatorActivity;->getEmulatorEngine(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-static {v2, v4}, Lcom/androidemu/Emulator;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/androidemu/Emulator;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    .line 150
    invoke-static {p0}, Lcom/androidemu/EmuMedia;->setOnFrameDrawnListener(Lcom/androidemu/Emulator$OnFrameDrawnListener;)V

    .line 152
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v4, "videoFilter"

    sget v5, Lcom/androidemu/snes/EmulatorActivity;->Filt:I

    invoke-virtual {v2, v4, v5}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;I)V

    .line 154
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/EmulatorActivity;->setContentView(I)V

    .line 156
    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/EmulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/androidemu/EmulatorView;

    iput-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    .line 157
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v2}, Lcom/androidemu/EmulatorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 158
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v2, p0}, Lcom/androidemu/EmulatorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v2}, Lcom/androidemu/EmulatorView;->requestFocus()Z

    .line 162
    new-instance v2, Lcom/androidemu/snes/input/Keyboard;

    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-direct {v2, v4, p0}, Lcom/androidemu/snes/input/Keyboard;-><init>(Landroid/view/View;Lcom/androidemu/snes/input/GameKeyListener;)V

    iput-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->keyboard:Lcom/androidemu/snes/input/Keyboard;

    .line 164
    const/16 v2, 0x1a

    new-array v1, v2, [Ljava/lang/String;

    .line 165
    const-string v2, "fullScreenMode"

    aput-object v2, v1, v3

    .line 166
    const-string v2, "flipScreen"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    .line 167
    const-string v4, "fastForwardSpeed"

    aput-object v4, v1, v2

    .line 168
    const-string v2, "frameSkipMode"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    .line 169
    const-string v4, "maxFrameSkips"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    .line 170
    const-string v4, "refreshRate"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    .line 171
    const-string v4, "enableLightGun"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    .line 172
    const-string v4, "enableGamepad2"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    .line 173
    const-string v4, "soundEnabled"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    .line 174
    const-string v4, "soundVolume"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    .line 175
    const-string v4, "transparencyEnabled"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    .line 176
    const-string v4, "enableHiRes"

    aput-object v4, v1, v2

    const/16 v2, 0xc

    .line 177
    const-string v4, "enableTrackball"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    .line 178
    const-string v4, "trackballSensitivity"

    aput-object v4, v1, v2

    const/16 v2, 0xe

    .line 179
    const-string v4, "useSensor"

    aput-object v4, v1, v2

    const/16 v2, 0xf

    .line 180
    const-string v4, "sensorSensitivity"

    aput-object v4, v1, v2

    const/16 v2, 0x10

    .line 181
    const-string v4, "enableVKeypad"

    aput-object v4, v1, v2

    const/16 v2, 0x11

    .line 182
    const-string v4, "scalingMode"

    aput-object v4, v1, v2

    const/16 v2, 0x12

    .line 183
    const-string v4, "aspectRatio"

    aput-object v4, v1, v2

    const/16 v2, 0x13

    .line 184
    const-string v4, "enableCheats"

    aput-object v4, v1, v2

    const/16 v2, 0x14

    .line 185
    const-string v4, "orientation"

    aput-object v4, v1, v2

    const/16 v2, 0x15

    .line 186
    const-string v4, "useInputMethod"

    aput-object v4, v1, v2

    const/16 v2, 0x16

    .line 187
    const-string v4, "quickLoad"

    aput-object v4, v1, v2

    const/16 v2, 0x17

    .line 188
    const-string v4, "quickSave"

    aput-object v4, v1, v2

    const/16 v2, 0x18

    .line 189
    const-string v4, "fastForward"

    aput-object v4, v1, v2

    const/16 v2, 0x19

    .line 190
    const-string v4, "screenshot"

    aput-object v4, v1, v2

    .line 193
    .local v1, "prefKeys":[Ljava/lang/String;
    array-length v4, v1

    move v2, v3

    :goto_1
    if-lt v2, v4, :cond_1

    .line 195
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2}, Lcom/androidemu/snes/EmulatorActivity;->loadKeyBindings(Landroid/content/SharedPreferences;)V

    .line 197
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v2, p0}, Lcom/androidemu/Emulator;->setFrameUpdateListener(Lcom/androidemu/Emulator$FrameUpdateListener;)V

    .line 199
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v3, "enableSRAM"

    invoke-virtual {v2, v3, v6}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    .line 200
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v3, "apuEnabled"

    .line 201
    sget-object v4, Lcom/androidemu/snes/EmulatorActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "apuEnabled"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 200
    invoke-virtual {v2, v3, v4}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    .line 203
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->loadROM()Z

    move-result v2

    if-nez v2, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->finish()V

    goto/16 :goto_0

    .line 193
    :cond_1
    aget-object v0, v1, v2

    .line 194
    .local v0, "key":Ljava/lang/String;
    sget-object v3, Lcom/androidemu/snes/EmulatorActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v3, v0}, Lcom/androidemu/snes/EmulatorActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/androidemu/snes/EmulatorService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    const-string v3, "com.androidemu.actions.FOREGROUND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 207
    invoke-virtual {p0, v2}, Lcom/androidemu/snes/EmulatorActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 283
    packed-switch p1, :pswitch_data_0

    .line 291
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 285
    :pswitch_0
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->createQuitGameDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 287
    :pswitch_1
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->createReplaceGameDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 289
    :pswitch_2
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->createWifiConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 380
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 382
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 384
    invoke-static {}, Lcom/androidemu/snes/wrapper/Wrapper;->isBluetoothPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    const v0, 0x7f09001b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 386
    const v0, 0x7f09001c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 388
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 215
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->unloadROM()V

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->onDisconnect()V

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/snes/EmulatorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/androidemu/snes/EmulatorActivity;->stopService(Landroid/content/Intent;)Z

    .line 220
    return-void
.end method

.method public onFrameDrawn(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->vkeypad:Lcom/androidemu/snes/input/VirtualKeypad;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->vkeypad:Lcom/androidemu/snes/input/VirtualKeypad;

    invoke-virtual {v0, p1}, Lcom/androidemu/snes/input/VirtualKeypad;->draw(Landroid/graphics/Canvas;)V

    .line 823
    :cond_0
    return-void
.end method

.method public onFrameUpdate(I)I
    .locals 3
    .param p1, "keys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 575
    and-int/lit16 v0, p1, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_1

    .line 577
    sget v0, Lcom/androidemu/snes/EmulatorActivity;->KeyTime:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/androidemu/snes/EmulatorActivity;->KeyTime:I

    .line 578
    sget v0, Lcom/androidemu/snes/EmulatorActivity;->KeyTime:I

    const/16 v1, 0xb4

    if-le v0, v1, :cond_0

    .line 580
    sput v2, Lcom/androidemu/snes/EmulatorActivity;->KeyTime:I

    .line 581
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->finish()V

    .line 586
    :cond_0
    :goto_0
    return p1

    .line 585
    :cond_1
    sput v2, Lcom/androidemu/snes/EmulatorActivity;->KeyTime:I

    goto :goto_0
.end method

.method public onGameKeyChanged()V
    .locals 4

    .prologue
    .line 730
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->keyboard:Lcom/androidemu/snes/input/Keyboard;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/Keyboard;->getKeyStates()I

    move-result v1

    .line 732
    .local v1, "states":I
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->sensor:Lcom/androidemu/snes/input/SensorKeypad;

    if-eqz v2, :cond_3

    .line 733
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->sensor:Lcom/androidemu/snes/input/SensorKeypad;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/SensorKeypad;->getKeyStates()I

    move-result v0

    .line 734
    .local v0, "keys":I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 735
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->sensorMappings:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    or-int/2addr v1, v2

    .line 736
    :cond_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 737
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->sensorMappings:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    or-int/2addr v1, v2

    .line 738
    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 739
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->sensorMappings:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    or-int/2addr v1, v2

    .line 740
    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    .line 741
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->sensorMappings:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    or-int/2addr v1, v2

    .line 743
    .end local v0    # "keys":I
    :cond_3
    iget-boolean v2, p0, Lcom/androidemu/snes/EmulatorActivity;->flipScreen:Z

    if-eqz v2, :cond_4

    .line 744
    invoke-direct {p0, v1}, Lcom/androidemu/snes/EmulatorActivity;->flipGameKeys(I)I

    move-result v1

    .line 746
    :cond_4
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->vkeypad:Lcom/androidemu/snes/input/VirtualKeypad;

    if-eqz v2, :cond_5

    .line 747
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->vkeypad:Lcom/androidemu/snes/input/VirtualKeypad;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad;->getKeyStates()I

    move-result v2

    or-int/2addr v1, v2

    .line 750
    :cond_5
    and-int/lit16 v2, v1, 0x300

    const/16 v3, 0x300

    if-ne v2, v3, :cond_6

    .line 751
    and-int/lit16 v1, v1, -0x301

    .line 752
    :cond_6
    and-int/lit16 v2, v1, 0xc00

    const/16 v3, 0xc00

    if-ne v2, v3, :cond_7

    .line 753
    and-int/lit16 v1, v1, -0xc01

    .line 755
    :cond_7
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v2, v1}, Lcom/androidemu/Emulator;->setKeyStates(I)V

    .line 756
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v5, 0x10000

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 307
    iget v2, p0, Lcom/androidemu/snes/EmulatorActivity;->quickLoadKey:I

    if-ne p1, v2, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->quickLoad()V

    .line 375
    :cond_0
    :goto_0
    return v1

    .line 311
    :cond_1
    iget v2, p0, Lcom/androidemu/snes/EmulatorActivity;->quickSaveKey:I

    if-ne p1, v2, :cond_2

    .line 312
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->quickSave()V

    goto :goto_0

    .line 315
    :cond_2
    iget v2, p0, Lcom/androidemu/snes/EmulatorActivity;->fastForwardKey:I

    if-ne p1, v2, :cond_3

    .line 316
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->onFastForward()V

    goto :goto_0

    .line 319
    :cond_3
    iget v2, p0, Lcom/androidemu/snes/EmulatorActivity;->screenshotKey:I

    if-ne p1, v2, :cond_4

    .line 320
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->onScreenshot()V

    goto :goto_0

    .line 324
    :cond_4
    const/16 v2, 0x1b

    if-eq p1, v2, :cond_0

    .line 325
    const/16 v2, 0x54

    if-eq p1, v2, :cond_0

    .line 328
    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/16 v2, 0x52

    if-eq p1, v2, :cond_0

    .line 330
    const/16 v2, 0x6f

    if-ne p1, v2, :cond_9

    .line 331
    sput-boolean v4, Lcom/androidemu/snes/EmulatorActivity;->Exit:Z

    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Pack:Ljava/lang/String;

    if-nez v2, :cond_7

    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Class:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 335
    const-string v2, "com.yy.powkiddy"

    const-string v3, "com.yy.powkiddy.activity.InfoDialog"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 338
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0, v0, v1}, Lcom/androidemu/snes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 340
    invoke-virtual {p0, v4, v4}, Lcom/androidemu/snes/EmulatorActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 343
    :cond_5
    const-string v2, "com.vrt.launch"

    const-string v3, "com.vrt.launch.InfoDialog"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 346
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0, v0, v4}, Lcom/androidemu/snes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    invoke-virtual {p0, v4, v4}, Lcom/androidemu/snes/EmulatorActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 353
    :cond_6
    sput-boolean v1, Lcom/androidemu/snes/EmulatorActivity;->Exit:Z

    .line 354
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->pauseEmulator()V

    .line 356
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->finish()V

    .line 357
    invoke-virtual {p0, v4, v4}, Lcom/androidemu/snes/EmulatorActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 362
    :cond_7
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Pack:Ljava/lang/String;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Class:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 364
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Pack:Ljava/lang/String;

    sget-object v3, Lcom/androidemu/snes/EmulatorActivity;->Class:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 367
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0, v0, v4}, Lcom/androidemu/snes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 369
    invoke-virtual {p0, v4, v4}, Lcom/androidemu/snes/EmulatorActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 373
    :cond_8
    sput-boolean v1, Lcom/androidemu/snes/EmulatorActivity;->Exit:Z

    .line 375
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 272
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 275
    :cond_0
    iput-object p1, p0, Lcom/androidemu/snes/EmulatorActivity;->newIntent:Landroid/content/Intent;

    .line 277
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->pauseEmulator()V

    .line 278
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/androidemu/snes/EmulatorActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 413
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 476
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 415
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/androidemu/snes/EmulatorSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/androidemu/snes/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 420
    :pswitch_2
    :try_start_0
    iget-object v1, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    invoke-virtual {v1}, Lcom/androidemu/snes/NetPlayService;->sendResetROM()V

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v1}, Lcom/androidemu/Emulator;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v1

    goto :goto_0

    .line 427
    :pswitch_3
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->onFastForward()V

    goto :goto_0

    .line 431
    :pswitch_4
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->onScreenshot()V

    goto :goto_0

    .line 435
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/androidemu/snes/CheatsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/androidemu/snes/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 439
    :pswitch_6
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->onSaveState()V

    goto :goto_0

    .line 443
    :pswitch_7
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->onLoadState()V

    goto :goto_0

    .line 447
    :pswitch_8
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->onWifiServer()V

    goto :goto_0

    .line 451
    :pswitch_9
    invoke-virtual {p0, v2}, Lcom/androidemu/snes/EmulatorActivity;->showDialog(I)V

    goto :goto_0

    .line 455
    :pswitch_a
    invoke-direct {p0, v2}, Lcom/androidemu/snes/EmulatorActivity;->checkBluetoothEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->onBluetoothServer()V

    goto :goto_0

    .line 460
    :pswitch_b
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/androidemu/snes/EmulatorActivity;->checkBluetoothEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->onBluetoothClient()V

    goto :goto_0

    .line 465
    :pswitch_c
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->onDisconnect()V

    goto :goto_0

    .line 469
    :pswitch_d
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->onNetPlaySync()V

    goto :goto_0

    .line 473
    :pswitch_e
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->finish()V

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x7f090015
        :pswitch_d
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_e
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 226
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->pauseEmulator()V

    .line 227
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->sensor:Lcom/androidemu/snes/input/SensorKeypad;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->sensor:Lcom/androidemu/snes/input/SensorKeypad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidemu/snes/input/SensorKeypad;->setGameKeyListener(Lcom/androidemu/snes/input/GameKeyListener;)V

    .line 236
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 296
    packed-switch p1, :pswitch_data_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 298
    :pswitch_0
    const v1, 0x7f090013

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 299
    .local v0, "v":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 300
    const/16 v1, 0x14f9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v6, 0x7f090020

    const v5, 0x7f090019

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 393
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 394
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->pauseEmulator()V

    .line 396
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    if-eqz v3, :cond_1

    move v0, v1

    .line 397
    .local v0, "netplay":Z
    :goto_0
    const v3, 0x7f09001a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_2

    move v3, v2

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 398
    const v3, 0x7f09001f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 399
    const v3, 0x7f090015

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_3

    move v3, v2

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 401
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_4

    move v3, v2

    :goto_3
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 403
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 404
    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4}, Lcom/androidemu/Emulator;->getCheats()Lcom/androidemu/Cheats;

    move-result-object v4

    if-eqz v4, :cond_0

    move v2, v1

    .line 403
    :cond_0
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 405
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 406
    iget-boolean v2, p0, Lcom/androidemu/snes/EmulatorActivity;->inFastForward:Z

    if-eqz v2, :cond_5

    const v2, 0x7f070020

    .line 405
    :goto_4
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 408
    return v1

    .end local v0    # "netplay":Z
    :cond_1
    move v0, v2

    .line 396
    goto :goto_0

    .restart local v0    # "netplay":Z
    :cond_2
    move v3, v1

    .line 397
    goto :goto_1

    :cond_3
    move v3, v1

    .line 400
    goto :goto_2

    :cond_4
    move v3, v1

    .line 401
    goto :goto_3

    .line 407
    :cond_5
    const v2, 0x7f07001f

    goto :goto_4
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 242
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->sensor:Lcom/androidemu/snes/input/SensorKeypad;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->sensor:Lcom/androidemu/snes/input/SensorKeypad;

    invoke-virtual {v0, p0}, Lcom/androidemu/snes/input/SensorKeypad;->setGameKeyListener(Lcom/androidemu/snes/input/GameKeyListener;)V

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->resumeEmulator()V

    .line 245
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 597
    const-string v5, "gamepad"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 598
    invoke-direct {p0, p1}, Lcom/androidemu/snes/EmulatorActivity;->loadKeyBindings(Landroid/content/SharedPreferences;)V

    .line 727
    .end local p0    # "this":Lcom/androidemu/snes/EmulatorActivity;
    :cond_0
    :goto_0
    return-void

    .line 600
    .restart local p0    # "this":Lcom/androidemu/snes/EmulatorActivity;
    :cond_1
    const-string v5, "fullScreenMode"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 601
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 602
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v3, "fullScreenMode"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 603
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 606
    :goto_1
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 605
    :cond_2
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 608
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    const-string v5, "flipScreen"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 609
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/androidemu/snes/EmulatorActivity;->setFlipScreen(Landroid/content/SharedPreferences;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 611
    :cond_4
    const-string v5, "fastForwardSpeed"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 612
    const-string v3, "2x"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 613
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/androidemu/snes/EmulatorActivity;->fastForwardSpeed:F

    .line 615
    iget-boolean v3, p0, Lcom/androidemu/snes/EmulatorActivity;->inFastForward:Z

    if-eqz v3, :cond_0

    .line 616
    iget v3, p0, Lcom/androidemu/snes/EmulatorActivity;->fastForwardSpeed:F

    invoke-direct {p0, v3}, Lcom/androidemu/snes/EmulatorActivity;->setGameSpeed(F)V

    goto :goto_0

    .line 618
    .end local v2    # "value":Ljava/lang/String;
    :cond_5
    const-string v5, "frameSkipMode"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 619
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v4, "auto"

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_6
    const-string v5, "maxFrameSkips"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 622
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-interface {p1, p2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 624
    :cond_7
    const-string v5, "maxFramesAhead"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 625
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    if-eqz v3, :cond_0

    .line 626
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/androidemu/snes/NetPlayService;->setMaxFramesAhead(I)V

    goto/16 :goto_0

    .line 628
    :cond_8
    const-string v5, "autoSyncClient"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 629
    const-string v5, "autoSyncClientInterval"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 631
    :cond_9
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->netPlayService:Lcom/androidemu/snes/NetPlayService;

    invoke-virtual {v3}, Lcom/androidemu/snes/NetPlayService;->isServer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->stopAutoSyncClient()V

    .line 633
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "autoSyncClient"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 635
    const-string v4, "autoSyncClientInterval"

    const-string v5, "30"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 634
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/androidemu/snes/EmulatorActivity;->autoSyncClientInterval:I

    .line 636
    iget v3, p0, Lcom/androidemu/snes/EmulatorActivity;->autoSyncClientInterval:I

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/androidemu/snes/EmulatorActivity;->autoSyncClientInterval:I

    .line 637
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorActivity;->startAutoSyncClient()V

    goto/16 :goto_0

    .line 640
    :cond_a
    const-string v5, "refreshRate"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 641
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v4, "default"

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 643
    :cond_b
    const-string v5, "enableLightGun"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 644
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/androidemu/snes/EmulatorActivity;->lightGunEnabled:Z

    .line 645
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    iget-boolean v4, p0, Lcom/androidemu/snes/EmulatorActivity;->lightGunEnabled:Z

    invoke-virtual {v3, p2, v4}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 647
    :cond_c
    const-string v5, "enableGamepad2"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 649
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v3, p2, v6}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 651
    :cond_d
    const-string v5, "soundEnabled"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 652
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, p2, v4}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 655
    :cond_e
    const-string v5, "soundVolume"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 656
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const/16 v4, 0x64

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, p2, v4}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 658
    :cond_f
    const-string v5, "transparencyEnabled"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 659
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, p2, v4}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 661
    :cond_10
    const-string v5, "enableHiRes"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 662
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, p2, v4}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 664
    :cond_11
    const-string v5, "enableTrackball"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 665
    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    .line 666
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 87
    .end local p0    # "this":Lcom/androidemu/snes/EmulatorActivity;
    :goto_2
    invoke-virtual {v4, p0}, Lcom/androidemu/EmulatorView;->setOnTrackballListener(Lcom/androidemu/EmulatorView$OnTrackballListener;)V

    goto/16 :goto_0

    .restart local p0    # "this":Lcom/androidemu/snes/EmulatorActivity;
    :cond_12
    move-object p0, v3

    .line 666
    goto :goto_2

    .line 668
    :cond_13
    const-string v5, "trackballSensitivity"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 669
    invoke-interface {p1, p2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/androidemu/snes/EmulatorActivity;->trackballSensitivity:I

    goto/16 :goto_0

    .line 671
    :cond_14
    const-string v5, "useSensor"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 672
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/androidemu/snes/EmulatorActivity;->getSensorMappings(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->sensorMappings:[I

    .line 673
    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->sensorMappings:[I

    if-nez v4, :cond_15

    .line 674
    iput-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->sensor:Lcom/androidemu/snes/input/SensorKeypad;

    goto/16 :goto_0

    .line 675
    :cond_15
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->sensor:Lcom/androidemu/snes/input/SensorKeypad;

    if-nez v3, :cond_0

    .line 676
    new-instance v3, Lcom/androidemu/snes/input/SensorKeypad;

    invoke-direct {v3, p0}, Lcom/androidemu/snes/input/SensorKeypad;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->sensor:Lcom/androidemu/snes/input/SensorKeypad;

    .line 677
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->sensor:Lcom/androidemu/snes/input/SensorKeypad;

    const-string v4, "sensorSensitivity"

    invoke-interface {p1, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/androidemu/snes/input/SensorKeypad;->setSensitivity(I)V

    goto/16 :goto_0

    .line 679
    :cond_16
    const-string v3, "sensorSensitivity"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 680
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->sensor:Lcom/androidemu/snes/input/SensorKeypad;

    if-eqz v3, :cond_0

    .line 681
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->sensor:Lcom/androidemu/snes/input/SensorKeypad;

    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/androidemu/snes/input/SensorKeypad;->setSensitivity(I)V

    goto/16 :goto_0

    .line 683
    :cond_17
    const-string v3, "enableVKeypad"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 694
    const-string v3, "scalingMode"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 695
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    .line 696
    const-string v4, "default"

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 695
    invoke-static {v4}, Lcom/androidemu/snes/EmulatorActivity;->getScalingMode(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/androidemu/EmulatorView;->setScalingMode(I)V

    goto/16 :goto_0

    .line 699
    :cond_18
    const-string v3, "aspectRatio"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 700
    const-string v3, "1.3333"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 701
    .local v1, "ratio":F
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v3, v1}, Lcom/androidemu/EmulatorView;->setAspectRatio(F)V

    goto/16 :goto_0

    .line 703
    .end local v1    # "ratio":F
    :cond_19
    const-string v3, "enableCheats"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 704
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/androidemu/Emulator;->enableCheats(Z)V

    goto/16 :goto_0

    .line 706
    :cond_1a
    const-string v3, "orientation"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 708
    const-string v3, "unspecified"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 707
    invoke-static {v3}, Lcom/androidemu/snes/EmulatorActivity;->getScreenOrientation(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/androidemu/snes/EmulatorActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 710
    :cond_1b
    const-string v3, "useInputMethod"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 711
    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v3, v4

    .line 713
    :goto_3
    const/high16 v4, 0x20000

    .line 711
    invoke-virtual {v5, v3, v4}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_0

    .line 712
    :cond_1c
    const/high16 v3, 0x20000

    goto :goto_3

    .line 715
    :cond_1d
    const-string v3, "quickLoad"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 716
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/androidemu/snes/EmulatorActivity;->quickLoadKey:I

    goto/16 :goto_0

    .line 718
    :cond_1e
    const-string v3, "quickSave"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 719
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/androidemu/snes/EmulatorActivity;->quickSaveKey:I

    goto/16 :goto_0

    .line 721
    :cond_1f
    const-string v3, "fastForward"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 722
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/androidemu/snes/EmulatorActivity;->fastForwardKey:I

    goto/16 :goto_0

    .line 724
    :cond_20
    const-string v3, "screenshot"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 725
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/androidemu/snes/EmulatorActivity;->screenshotKey:I

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 826
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->vkeypad:Lcom/androidemu/snes/input/VirtualKeypad;

    if-eqz v2, :cond_0

    .line 827
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->vkeypad:Lcom/androidemu/snes/input/VirtualKeypad;

    iget-boolean v3, p0, Lcom/androidemu/snes/EmulatorActivity;->flipScreen:Z

    invoke-virtual {v2, p2, v3}, Lcom/androidemu/snes/input/VirtualKeypad;->onTouch(Landroid/view/MotionEvent;Z)Z

    move-result v2

    .line 846
    :goto_0
    return v2

    .line 829
    :cond_0
    iget-boolean v2, p0, Lcom/androidemu/snes/EmulatorActivity;->lightGunEnabled:Z

    if-eqz v2, :cond_2

    .line 830
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 831
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 832
    iget v3, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceWidth:I

    .line 831
    mul-int/2addr v2, v3

    .line 832
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v3}, Lcom/androidemu/EmulatorView;->getWidth()I

    move-result v3

    .line 831
    div-int v0, v2, v3

    .line 833
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 834
    iget v3, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceHeight:I

    .line 833
    mul-int/2addr v2, v3

    .line 834
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v3}, Lcom/androidemu/EmulatorView;->getHeight()I

    move-result v3

    .line 833
    div-int v1, v2, v3

    .line 835
    .local v1, "y":I
    iget-boolean v2, p0, Lcom/androidemu/snes/EmulatorActivity;->flipScreen:Z

    if-eqz v2, :cond_1

    .line 836
    iget v2, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceWidth:I

    sub-int v0, v2, v0

    .line 837
    iget v2, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceHeight:I

    sub-int v1, v2, v1

    .line 839
    :cond_1
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 840
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    .line 841
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 842
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v2, v0, v1}, Lcom/androidemu/Emulator;->fireLightGun(II)V

    .line 843
    const/4 v2, 0x1

    goto :goto_0

    .line 846
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onTrackball(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 760
    .local v2, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 761
    .local v3, "dy":F
    iget-boolean v6, p0, Lcom/androidemu/snes/EmulatorActivity;->flipScreen:Z

    if-eqz v6, :cond_0

    .line 762
    neg-float v2, v2

    .line 763
    neg-float v3, v3

    .line 766
    :cond_0
    iget v6, p0, Lcom/androidemu/snes/EmulatorActivity;->trackballSensitivity:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v0, v6

    .line 767
    .local v0, "duration1":I
    iget v6, p0, Lcom/androidemu/snes/EmulatorActivity;->trackballSensitivity:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v1, v6

    .line 768
    .local v1, "duration2":I
    const/4 v4, 0x0

    .line 769
    .local v4, "key1":I
    const/4 v5, 0x0

    .line 771
    .local v5, "key2":I
    if-gez v0, :cond_3

    .line 772
    const/16 v4, 0x200

    .line 776
    :cond_1
    :goto_0
    if-gez v1, :cond_4

    .line 777
    const/16 v5, 0x800

    .line 781
    :cond_2
    :goto_1
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    .line 782
    const/4 v6, 0x0

    .line 786
    :goto_2
    return v6

    .line 773
    :cond_3
    if-lez v0, :cond_1

    .line 774
    const/16 v4, 0x100

    goto :goto_0

    .line 778
    :cond_4
    if-lez v1, :cond_2

    .line 779
    const/16 v5, 0x400

    goto :goto_1

    .line 784
    :cond_5
    iget-object v6, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 785
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 784
    invoke-virtual {v6, v4, v7, v5, v8}, Lcom/androidemu/Emulator;->processTrackball(IIII)V

    .line 786
    const/4 v6, 0x1

    goto :goto_2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 258
    if-eqz p1, :cond_1

    .line 260
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->keyboard:Lcom/androidemu/snes/input/Keyboard;

    invoke-virtual {v0}, Lcom/androidemu/snes/input/Keyboard;->reset()V

    .line 261
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->vkeypad:Lcom/androidemu/snes/input/VirtualKeypad;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->vkeypad:Lcom/androidemu/snes/input/VirtualKeypad;

    invoke-virtual {v0}, Lcom/androidemu/snes/input/VirtualKeypad;->reset()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidemu/Emulator;->setKeyStates(I)V

    .line 265
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->resume()V

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->pause()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 803
    iput p3, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceWidth:I

    .line 804
    iput p4, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceHeight:I

    .line 806
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->vkeypad:Lcom/androidemu/snes/input/VirtualKeypad;

    if-eqz v2, :cond_0

    .line 807
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->vkeypad:Lcom/androidemu/snes/input/VirtualKeypad;

    invoke-virtual {v2, p3, p4}, Lcom/androidemu/snes/input/VirtualKeypad;->resize(II)V

    .line 809
    :cond_0
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v2}, Lcom/androidemu/Emulator;->getVideoWidth()I

    move-result v1

    .line 810
    .local v1, "w":I
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v2}, Lcom/androidemu/Emulator;->getVideoHeight()I

    move-result v0

    .line 811
    .local v0, "h":I
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    sub-int v3, p3, v1

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 812
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 813
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 814
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 816
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    .line 817
    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/androidemu/snes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 816
    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/androidemu/Emulator;->setSurfaceRegion(IIII)V

    .line 818
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 790
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0, p1}, Lcom/androidemu/Emulator;->setSurface(Landroid/view/SurfaceHolder;)V

    .line 791
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->vkeypad:Lcom/androidemu/snes/input/VirtualKeypad;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->vkeypad:Lcom/androidemu/snes/input/VirtualKeypad;

    invoke-virtual {v0}, Lcom/androidemu/snes/input/VirtualKeypad;->destroy()V

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/androidemu/snes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidemu/Emulator;->setSurface(Landroid/view/SurfaceHolder;)V

    .line 798
    return-void
.end method
