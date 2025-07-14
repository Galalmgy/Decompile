.class public Lcom/androidemu/snes/UsbStatesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbStatesReceiver.java"


# static fields
.field static SMCFile:I = 0x0

.field static SMCList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static SMCSize:I = 0x0

.field public static final USB_STATE_MSG:I = 0x20

.field public static final USB_STATE_OFF:I = 0x22

.field public static final USB_STATE_ON:I = 0x21


# instance fields
.field execactivity:Lcom/androidemu/snes/MainActivity;

.field public filter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput v0, Lcom/androidemu/snes/UsbStatesReceiver;->SMCFile:I

    .line 26
    sput v0, Lcom/androidemu/snes/UsbStatesReceiver;->SMCSize:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/androidemu/snes/UsbStatesReceiver;->SMCList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/androidemu/snes/UsbStatesReceiver;->filter:Landroid/content/IntentFilter;

    .line 52
    check-cast p1, Lcom/androidemu/snes/MainActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/androidemu/snes/UsbStatesReceiver;->execactivity:Lcom/androidemu/snes/MainActivity;

    .line 53
    iget-object v0, p0, Lcom/androidemu/snes/UsbStatesReceiver;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/androidemu/snes/UsbStatesReceiver;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/androidemu/snes/UsbStatesReceiver;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/androidemu/snes/UsbStatesReceiver;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/androidemu/snes/UsbStatesReceiver;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/androidemu/snes/UsbStatesReceiver;->filter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "Path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 37
    .local v3, "listFiles":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-lt v2, v4, :cond_0

    .line 48
    return-object v1

    .line 39
    :cond_0
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".smc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 43
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 77
    .local v1, "ROM_URI":Landroid/net/Uri;
    const-string v2, "VSFC"

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/UsbStatesReceiver;->getFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/androidemu/snes/UsbStatesReceiver;->SMCList:Ljava/util/List;

    .line 80
    sget-object v2, Lcom/androidemu/snes/UsbStatesReceiver;->SMCList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Lcom/androidemu/snes/UsbStatesReceiver;->SMCSize:I

    .line 81
    sget v2, Lcom/androidemu/snes/UsbStatesReceiver;->SMCSize:I

    if-lez v2, :cond_0

    .line 83
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sget v4, Lcom/androidemu/snes/UsbStatesReceiver;->SMCSize:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sput v2, Lcom/androidemu/snes/UsbStatesReceiver;->SMCFile:I

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/androidemu/snes/UsbStatesReceiver;->SMCList:Ljava/util/List;

    sget v4, Lcom/androidemu/snes/UsbStatesReceiver;->SMCFile:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/androidemu/snes/UsbStatesReceiver;->execactivity:Lcom/androidemu/snes/MainActivity;

    const-class v4, Lcom/androidemu/snes/EmulatorActivity;

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "EMUintent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/androidemu/snes/UsbStatesReceiver;->execactivity:Lcom/androidemu/snes/MainActivity;

    invoke-virtual {v2, v0}, Lcom/androidemu/snes/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    .end local v0    # "EMUintent":Landroid/content/Intent;
    .end local v1    # "ROM_URI":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    sget v2, Lcom/androidemu/snes/UsbStatesReceiver;->SMCSize:I

    if-lez v2, :cond_0

    .line 94
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    if-eqz v2, :cond_0

    .line 96
    sget-object v2, Lcom/androidemu/snes/EmulatorActivity;->Instance:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v2}, Lcom/androidemu/snes/EmulatorActivity;->finish()V

    goto :goto_0
.end method

.method public registerReceiver()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/androidemu/snes/UsbStatesReceiver;->execactivity:Lcom/androidemu/snes/MainActivity;

    iget-object v1, p0, Lcom/androidemu/snes/UsbStatesReceiver;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Lcom/androidemu/snes/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public unregisterReceiver()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/androidemu/snes/UsbStatesReceiver;->execactivity:Lcom/androidemu/snes/MainActivity;

    invoke-virtual {v0, p0}, Lcom/androidemu/snes/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    return-void
.end method
