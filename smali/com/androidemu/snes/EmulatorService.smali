.class public Lcom/androidemu/snes/EmulatorService;
.super Landroid/app/Service;
.source "EmulatorService.java"


# static fields
.field static final ACTION_BACKGROUND:Ljava/lang/String; = "com.androidemu.actions.BACKGROUND"

.field static final ACTION_FOREGROUND:Ljava/lang/String; = "com.androidemu.actions.FOREGROUND"

.field private static final LOG_TAG:Ljava/lang/String; = "EmulatorService"

.field private static final mStartForegroundSignature:[Ljava/lang/Class;

.field private static final mStopForegroundSignature:[Ljava/lang/Class;


# instance fields
.field private mNM:Landroid/app/NotificationManager;

.field private mStartForeground:Ljava/lang/reflect/Method;

.field private mStartForegroundArgs:[Ljava/lang/Object;

.field private mStopForeground:Ljava/lang/reflect/Method;

.field private mStopForegroundArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 45
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    .line 44
    sput-object v0, Lcom/androidemu/snes/EmulatorService;->mStartForegroundSignature:[Ljava/lang/Class;

    .line 46
    new-array v0, v3, [Ljava/lang/Class;

    .line 47
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    .line 46
    sput-object v0, Lcom/androidemu/snes/EmulatorService;->mStopForegroundSignature:[Ljava/lang/Class;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/androidemu/snes/EmulatorService;->mStartForegroundArgs:[Ljava/lang/Object;

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/androidemu/snes/EmulatorService;->mStopForegroundArgs:[Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method handleCommand(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f070001

    .line 86
    const-string v3, "com.androidemu.actions.FOREGROUND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-virtual {p0, v6}, Lcom/androidemu/snes/EmulatorService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 91
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Notification;

    const/high16 v3, 0x7f020000

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 91
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 96
    .local v1, "notification":Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/androidemu/snes/EmulatorActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    invoke-static {p0, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 99
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const/high16 v3, 0x7f070000

    invoke-virtual {p0, v3}, Lcom/androidemu/snes/EmulatorService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 102
    invoke-virtual {p0, v6, v1}, Lcom/androidemu/snes/EmulatorService;->startForegroundCompat(ILandroid/app/Notification;)V

    .line 107
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v3, "com.androidemu.actions.BACKGROUND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {p0, v6}, Lcom/androidemu/snes/EmulatorService;->stopForegroundCompat(I)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 57
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/androidemu/snes/EmulatorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/androidemu/snes/EmulatorService;->mNM:Landroid/app/NotificationManager;

    .line 59
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startForeground"

    .line 60
    sget-object v3, Lcom/androidemu/snes/EmulatorService;->mStartForegroundSignature:[Ljava/lang/Class;

    .line 59
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/androidemu/snes/EmulatorService;->mStartForeground:Ljava/lang/reflect/Method;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stopForeground"

    .line 62
    sget-object v3, Lcom/androidemu/snes/EmulatorService;->mStopForegroundSignature:[Ljava/lang/Class;

    .line 61
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/androidemu/snes/EmulatorService;->mStopForeground:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/androidemu/snes/EmulatorService;->mStopForeground:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/androidemu/snes/EmulatorService;->mStartForeground:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 168
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/androidemu/snes/EmulatorService;->stopForegroundCompat(I)V

    .line 169
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/androidemu/snes/EmulatorService;->handleCommand(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/androidemu/snes/EmulatorService;->handleCommand(Landroid/content/Intent;)V

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method startForegroundCompat(ILandroid/app/Notification;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 135
    return-void
.end method

.method stopForegroundCompat(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 163
    return-void
.end method
