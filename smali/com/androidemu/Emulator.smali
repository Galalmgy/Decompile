.class public Lcom/androidemu/Emulator;
.super Ljava/lang/Object;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidemu/Emulator$FrameUpdateListener;,
        Lcom/androidemu/Emulator$OnFrameDrawnListener;
    }
.end annotation


# static fields
.field public static final GAMEPAD_A:I = 0x80

.field public static final GAMEPAD_B:I = 0x8000

.field public static final GAMEPAD_DOWN:I = 0x400

.field public static final GAMEPAD_DOWN_LEFT:I = 0x600

.field public static final GAMEPAD_DOWN_RIGHT:I = 0x500

.field public static final GAMEPAD_LEFT:I = 0x200

.field public static final GAMEPAD_RIGHT:I = 0x100

.field public static final GAMEPAD_SELECT:I = 0x2000

.field public static final GAMEPAD_START:I = 0x1000

.field public static final GAMEPAD_SUPERSCOPE_CURSOR:I = 0x4

.field public static final GAMEPAD_SUPERSCOPE_PAUSE:I = 0x2

.field public static final GAMEPAD_SUPERSCOPE_TURBO:I = 0x1

.field public static final GAMEPAD_TL:I = 0x20

.field public static final GAMEPAD_TR:I = 0x10

.field public static final GAMEPAD_UP:I = 0x800

.field public static final GAMEPAD_UP_LEFT:I = 0xa00

.field public static final GAMEPAD_UP_RIGHT:I = 0x900

.field public static final GAMEPAD_X:I = 0x40

.field public static final GAMEPAD_Y:I = 0x4000

.field private static emulator:Lcom/androidemu/Emulator;

.field private static engineLib:Ljava/lang/String;


# instance fields
.field private cheats:Lcom/androidemu/Cheats;

.field private cheatsEnabled:Z

.field private romFileName:Ljava/lang/String;

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "libDir"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/androidemu/Emulator;->initialize(Ljava/lang/String;I)Z

    .line 68
    new-instance v0, Lcom/androidemu/Emulator$1;

    invoke-direct {v0, p0}, Lcom/androidemu/Emulator$1;-><init>(Lcom/androidemu/Emulator;)V

    iput-object v0, p0, Lcom/androidemu/Emulator;->thread:Ljava/lang/Thread;

    .line 73
    iget-object v0, p0, Lcom/androidemu/Emulator;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/androidemu/Emulator;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/androidemu/Emulator;->nativeRun()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/androidemu/Emulator;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "engine"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v1, Lcom/androidemu/Emulator;->emulator:Lcom/androidemu/Emulator;

    if-nez v1, :cond_0

    .line 47
    const-string v1, "emu"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "libDir":Ljava/lang/String;
    sget-object v1, Lcom/androidemu/Emulator;->engineLib:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    sput-object p1, Lcom/androidemu/Emulator;->engineLib:Ljava/lang/String;

    .line 53
    invoke-static {v0, p1}, Lcom/androidemu/Emulator;->loadEngine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    :cond_1
    sget-object v1, Lcom/androidemu/Emulator;->emulator:Lcom/androidemu/Emulator;

    if-nez v1, :cond_2

    .line 57
    new-instance v1, Lcom/androidemu/Emulator;

    invoke-direct {v1, v0}, Lcom/androidemu/Emulator;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/androidemu/Emulator;->emulator:Lcom/androidemu/Emulator;

    .line 58
    :cond_2
    sget-object v1, Lcom/androidemu/Emulator;->emulator:Lcom/androidemu/Emulator;

    return-object v1
.end method

.method public static native getInput()I
.end method

.method public static getInstance()Lcom/androidemu/Emulator;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/androidemu/Emulator;->emulator:Lcom/androidemu/Emulator;

    return-object v0
.end method

.method public static native initPort()I
.end method

.method private native initialize(Ljava/lang/String;I)Z
.end method

.method private static native loadEngine(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeLoadROM(Ljava/lang/String;)Z
.end method

.method private native nativeRun()V
.end method

.method private native nativeUnloadROM()V
.end method

.method public static native readCard(II)I
.end method


# virtual methods
.method public final enableCheats(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/androidemu/Emulator;->cheatsEnabled:Z

    .line 78
    iget-object v0, p0, Lcom/androidemu/Emulator;->romFileName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    if-nez v0, :cond_2

    .line 82
    new-instance v0, Lcom/androidemu/Cheats;

    iget-object v1, p0, Lcom/androidemu/Emulator;->romFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/androidemu/Cheats;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    goto :goto_0

    .line 83
    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    invoke-virtual {v0}, Lcom/androidemu/Cheats;->destroy()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    goto :goto_0
.end method

.method public native fireLightGun(II)V
.end method

.method public final getCheats()Lcom/androidemu/Cheats;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    return-object v0
.end method

.method public native getOption(Ljava/lang/String;)I
.end method

.method public native getScreenshot(Ljava/nio/Buffer;)V
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public final loadROM(Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/androidemu/Emulator;->nativeLoadROM(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/androidemu/Emulator;->romFileName:Ljava/lang/String;

    .line 98
    iget-boolean v0, p0, Lcom/androidemu/Emulator;->cheatsEnabled:Z

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Lcom/androidemu/Cheats;

    invoke-direct {v0, p1}, Lcom/androidemu/Cheats;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    .line 100
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public native loadState(Ljava/lang/String;)Z
.end method

.method public native pause()V
.end method

.method public native power()V
.end method

.method public native processTrackball(IIII)V
.end method

.method public native reset()V
.end method

.method public native resume()V
.end method

.method public native saveState(Ljava/lang/String;)Z
.end method

.method public native setFrameUpdateListener(Lcom/androidemu/Emulator$FrameUpdateListener;)V
.end method

.method public native setKeyStates(I)V
.end method

.method public setOption(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public native setOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setOption(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 142
    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void

    .line 142
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public native setSurface(Landroid/view/SurfaceHolder;)V
.end method

.method public native setSurfaceRegion(IIII)V
.end method

.method public final unloadROM()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Lcom/androidemu/Emulator;->nativeUnloadROM()V

    .line 106
    iput-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    .line 107
    iput-object v0, p0, Lcom/androidemu/Emulator;->romFileName:Ljava/lang/String;

    .line 108
    return-void
.end method
