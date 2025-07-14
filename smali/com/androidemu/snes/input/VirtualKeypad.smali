.class public Lcom/androidemu/snes/input/VirtualKeypad;
.super Ljava/lang/Object;
.source "VirtualKeypad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidemu/snes/input/VirtualKeypad$Control;
    }
.end annotation


# static fields
.field private static final BUTTONS_4WAY:[I

.field private static final DPAD_4WAY:[I

.field private static final DPAD_DEADZONE_VALUES:[F


# instance fields
.field private buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

.field private context:Landroid/content/Context;

.field private controls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androidemu/snes/input/VirtualKeypad$Control;",
            ">;"
        }
    .end annotation
.end field

.field private dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

.field private dpad4Way:Z

.field private dpadDeadZone:F

.field private emulator:Lcom/androidemu/Emulator;

.field private gameKeyListener:Lcom/androidemu/snes/input/GameKeyListener;

.field private inBetweenPress:Z

.field private keyStates:I

.field private leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

.field private pointSizeThreshold:F

.field private rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

.field private scaleX:F

.field private scaleY:F

.field private selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

.field private transparency:I

.field private vibrator:Landroid/os/Vibrator;

.field private vibratorEnabled:Z

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/androidemu/snes/input/VirtualKeypad;->DPAD_4WAY:[I

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/androidemu/snes/input/VirtualKeypad;->BUTTONS_4WAY:[I

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/androidemu/snes/input/VirtualKeypad;->DPAD_DEADZONE_VALUES:[F

    .line 39
    return-void

    .line 23
    :array_0
    .array-data 4
        0x200
        0x800
        0x100
        0x400
    .end array-data

    .line 30
    :array_1
    .array-data 4
        0x4000
        0x40
        0x80
        0x8000
    .end array-data

    .line 37
    :array_2
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e0f5c29    # 0.14f
        0x3e2ab368    # 0.1667f
        0x3e4ccccd    # 0.2f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;Lcom/androidemu/snes/input/GameKeyListener;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "l"    # Lcom/androidemu/snes/input/GameKeyListener;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/androidemu/snes/input/VirtualKeypad;->DPAD_DEADZONE_VALUES:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpadDeadZone:F

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    .line 63
    invoke-static {}, Lcom/androidemu/Emulator;->getInstance()Lcom/androidemu/Emulator;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->emulator:Lcom/androidemu/Emulator;

    .line 66
    iput-object p1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->view:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->gameKeyListener:Lcom/androidemu/snes/input/GameKeyListener;

    .line 70
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->context:Landroid/content/Context;

    .line 71
    const-string v1, "vibrator"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->vibrator:Landroid/os/Vibrator;

    .line 73
    const v0, 0x7f020002

    invoke-direct {p0, v0}, Lcom/androidemu/snes/input/VirtualKeypad;->createControl(I)Lcom/androidemu/snes/input/VirtualKeypad$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    .line 74
    const v0, 0x7f020001

    invoke-direct {p0, v0}, Lcom/androidemu/snes/input/VirtualKeypad;->createControl(I)Lcom/androidemu/snes/input/VirtualKeypad$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    .line 75
    const v0, 0x7f02000b

    invoke-direct {p0, v0}, Lcom/androidemu/snes/input/VirtualKeypad;->createControl(I)Lcom/androidemu/snes/input/VirtualKeypad$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    .line 76
    const v0, 0x7f02000d

    invoke-direct {p0, v0}, Lcom/androidemu/snes/input/VirtualKeypad;->createControl(I)Lcom/androidemu/snes/input/VirtualKeypad$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    .line 77
    const v0, 0x7f02000f

    invoke-direct {p0, v0}, Lcom/androidemu/snes/input/VirtualKeypad;->createControl(I)Lcom/androidemu/snes/input/VirtualKeypad$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    .line 78
    return-void
.end method

.method private createControl(I)Lcom/androidemu/snes/input/VirtualKeypad$Control;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 148
    new-instance v0, Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-direct {v0, p1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;-><init>(I)V

    .line 149
    .local v0, "c":Lcom/androidemu/snes/input/VirtualKeypad$Control;
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return-object v0
.end method

.method private findControl(FF)Lcom/androidemu/snes/input/VirtualKeypad$Control;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 328
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 328
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidemu/snes/input/VirtualKeypad$Control;

    .line 329
    .local v0, "c":Lcom/androidemu/snes/input/VirtualKeypad$Control;
    invoke-virtual {v0, p1, p2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->hitTest(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private get4WayDirection(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 263
    sub-float/2addr p1, v0

    .line 264
    sub-float/2addr p2, v0

    .line 266
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 267
    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    .line 267
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 268
    :cond_1
    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getButtonsStates(FFF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "size"    # F

    .prologue
    .line 292
    sget-object v1, Lcom/androidemu/snes/input/VirtualKeypad;->BUTTONS_4WAY:[I

    invoke-direct {p0, p1, p2}, Lcom/androidemu/snes/input/VirtualKeypad;->get4WayDirection(FF)I

    move-result v2

    aget v0, v1, v2

    .line 294
    .local v0, "states":I
    iget v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->pointSizeThreshold:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    .line 295
    sparse-switch v0, :sswitch_data_0

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 298
    :sswitch_0
    const v0, 0xc000

    .line 299
    goto :goto_0

    .line 302
    :sswitch_1
    const/16 v0, 0xc0

    goto :goto_0

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_1
        0x4000 -> :sswitch_0
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getControlScale(Landroid/content/SharedPreferences;)F
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 139
    const-string v1, "vkeypadSize"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "value":Ljava/lang/String;
    const-string v1, "small"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/high16 v1, 0x3f800000    # 1.0f

    .line 144
    :goto_0
    return v1

    .line 142
    :cond_0
    const-string v1, "large"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const v1, 0x3faaaa8f

    goto :goto_0

    .line 144
    :cond_1
    const v1, 0x3f99999a    # 1.2f

    goto :goto_0
.end method

.method private getControlStates(Lcom/androidemu/snes/input/VirtualKeypad$Control;FFF)I
    .locals 2
    .param p1, "c"    # Lcom/androidemu/snes/input/VirtualKeypad$Control;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "size"    # F

    .prologue
    .line 336
    invoke-virtual {p1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getX()F

    move-result v0

    sub-float v0, p2, v0

    invoke-virtual {p1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float p2, v0, v1

    .line 337
    invoke-virtual {p1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getY()F

    move-result v0

    sub-float v0, p3, v0

    invoke-virtual {p1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float p3, v0, v1

    .line 339
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    if-ne p1, v0, :cond_0

    .line 340
    invoke-direct {p0, p2, p3}, Lcom/androidemu/snes/input/VirtualKeypad;->getDpadStates(FF)I

    move-result v0

    .line 350
    :goto_0
    return v0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    if-ne p1, v0, :cond_1

    .line 342
    invoke-direct {p0, p2, p3, p4}, Lcom/androidemu/snes/input/VirtualKeypad;->getButtonsStates(FFF)I

    move-result v0

    goto :goto_0

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    if-ne p1, v0, :cond_2

    .line 344
    invoke-direct {p0, p2, p3}, Lcom/androidemu/snes/input/VirtualKeypad;->getSelectStartStates(FF)I

    move-result v0

    goto :goto_0

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    if-ne p1, v0, :cond_3

    .line 346
    const/16 v0, 0x20

    goto :goto_0

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    if-ne p1, v0, :cond_4

    .line 348
    const/16 v0, 0x10

    goto :goto_0

    .line 350
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDpadStates(FF)I
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 272
    iget-boolean v3, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad4Way:Z

    if-eqz v3, :cond_1

    .line 273
    sget-object v3, Lcom/androidemu/snes/input/VirtualKeypad;->DPAD_4WAY:[I

    invoke-direct {p0, p1, p2}, Lcom/androidemu/snes/input/VirtualKeypad;->get4WayDirection(FF)I

    move-result v4

    aget v2, v3, v4

    .line 288
    :cond_0
    :goto_0
    return v2

    .line 275
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 276
    .local v0, "cx":F
    const/high16 v1, 0x3f000000    # 0.5f

    .line 277
    .local v1, "cy":F
    const/4 v2, 0x0

    .line 279
    .local v2, "states":I
    iget v3, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpadDeadZone:F

    sub-float v3, v4, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_3

    .line 280
    or-int/lit16 v2, v2, 0x200

    .line 283
    :cond_2
    :goto_1
    iget v3, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpadDeadZone:F

    sub-float v3, v4, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_4

    .line 284
    or-int/lit16 v2, v2, 0x800

    goto :goto_0

    .line 281
    :cond_3
    iget v3, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpadDeadZone:F

    add-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    .line 282
    or-int/lit16 v2, v2, 0x100

    goto :goto_1

    .line 285
    :cond_4
    iget v3, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpadDeadZone:F

    add-float/2addr v3, v4

    cmpl-float v3, p2, v3

    if-lez v3, :cond_0

    .line 286
    or-int/lit16 v2, v2, 0x400

    goto :goto_0
.end method

.method private getEventX(Landroid/view/MotionEvent;IZ)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "index"    # I
    .param p3, "flip"    # Z

    .prologue
    .line 314
    invoke-static {p1, p2}, Lcom/androidemu/snes/wrapper/Wrapper;->MotionEvent_getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 315
    .local v0, "x":F
    if-eqz p3, :cond_0

    .line 316
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 317
    :cond_0
    iget v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->scaleX:F

    mul-float/2addr v1, v0

    return v1
.end method

.method private getEventY(Landroid/view/MotionEvent;IZ)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "index"    # I
    .param p3, "flip"    # Z

    .prologue
    .line 321
    invoke-static {p1, p2}, Lcom/androidemu/snes/wrapper/Wrapper;->MotionEvent_getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 322
    .local v0, "y":F
    if-eqz p3, :cond_0

    .line 323
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 324
    :cond_0
    iget v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->scaleY:F

    mul-float/2addr v1, v0

    return v1
.end method

.method private getSelectStartStates(FF)I
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 310
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/16 v0, 0x2000

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1000

    goto :goto_0
.end method

.method private makeBottomBottom(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v4, 0x0

    .line 154
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-le v1, p1, :cond_0

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/androidemu/snes/input/VirtualKeypad;->makeBottomTop(II)V

    .line 172
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 160
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 161
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1, v4, v4}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 162
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 164
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 165
    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    .line 164
    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 166
    .local v0, "x":I
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    int-to-float v2, v0

    iget-object v3, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    sub-int v1, p1, v1

    div-int/lit8 v0, v1, 0x2

    .line 170
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    int-to-float v2, v0

    invoke-virtual {v1, v2, v4}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    goto :goto_0
.end method

.method private makeBottomTop(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v4, 0x0

    .line 214
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 215
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 217
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 218
    const v3, 0x7f02000e

    .line 217
    invoke-virtual {v1, v2, v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->reload(Landroid/content/res/Resources;I)V

    .line 219
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1, v4, v4}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 220
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    .line 221
    iget-object v3, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    .line 220
    invoke-virtual {v1, v2, v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 223
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 224
    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    .line 223
    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 225
    .local v0, "x":I
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    int-to-float v2, v0

    iget-object v3, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 232
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 229
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    int-to-float v2, v0

    .line 230
    iget-object v3, p0, Lcom/androidemu/snes/input/VirtualKeypad;->leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    sub-int v3, p2, v3

    iget-object v4, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v4}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 229
    invoke-virtual {v1, v2, v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    goto :goto_0
.end method

.method private makeTopBottom(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v4, 0x0

    .line 195
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1, v4, v4}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 196
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 198
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 199
    const v3, 0x7f02000c

    .line 198
    invoke-virtual {v1, v2, v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->reload(Landroid/content/res/Resources;I)V

    .line 200
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 201
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 203
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 204
    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    .line 203
    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 205
    .local v0, "x":I
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    int-to-float v2, v0

    iget-object v3, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 209
    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    int-to-float v2, v0

    iget-object v3, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    goto :goto_0
.end method

.method private makeTopTop(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v0}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_0

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/androidemu/snes/input/VirtualKeypad;->makeBottomTop(II)V

    .line 192
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v0, v3, v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 180
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 182
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 183
    const v2, 0x7f02000c

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->reload(Landroid/content/res/Resources;I)V

    .line 184
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 185
    const v2, 0x7f02000e

    .line 184
    invoke-virtual {v0, v1, v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->reload(Landroid/content/res/Resources;I)V

    .line 186
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 187
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    .line 188
    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    .line 187
    invoke-virtual {v0, v1, v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    .line 190
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    iget-object v1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 191
    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->getHeight()I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    .line 190
    invoke-virtual {v0, v1, v2}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->move(FF)V

    goto :goto_0
.end method

.method private reposition(IILandroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 235
    const-string v1, "vkeypadLayout"

    const-string v2, "top_bottom"

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "layout":Ljava/lang/String;
    const-string v1, "top_bottom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/androidemu/snes/input/VirtualKeypad;->makeTopBottom(II)V

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    const-string v1, "bottom_top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/androidemu/snes/input/VirtualKeypad;->makeBottomTop(II)V

    goto :goto_0

    .line 241
    :cond_1
    const-string v1, "top_top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/androidemu/snes/input/VirtualKeypad;->makeTopTop(II)V

    goto :goto_0

    .line 244
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/androidemu/snes/input/VirtualKeypad;->makeBottomBottom(II)V

    goto :goto_0
.end method

.method private setKeyStates(I)V
    .locals 3
    .param p1, "newStates"    # I

    .prologue
    .line 252
    iget v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->keyStates:I

    if-ne v0, p1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-boolean v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->vibratorEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->keyStates:I

    invoke-direct {p0, v0, p1}, Lcom/androidemu/snes/input/VirtualKeypad;->shouldVibrate(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 258
    :cond_1
    iput p1, p0, Lcom/androidemu/snes/input/VirtualKeypad;->keyStates:I

    .line 259
    iget-object v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->gameKeyListener:Lcom/androidemu/snes/input/GameKeyListener;

    invoke-interface {v0}, Lcom/androidemu/snes/input/GameKeyListener;->onGameKeyChanged()V

    goto :goto_0
.end method

.method private shouldVibrate(II)Z
    .locals 1
    .param p1, "oldStates"    # I
    .param p2, "newStates"    # I

    .prologue
    .line 248
    xor-int v0, p1, p2

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 131
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 132
    .local v1, "paint":Landroid/graphics/Paint;
    iget v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->transparency:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    iget-object v2, p0, Lcom/androidemu/snes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    return-void

    .line 134
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidemu/snes/input/VirtualKeypad$Control;

    .line 135
    .local v0, "c":Lcom/androidemu/snes/input/VirtualKeypad$Control;
    invoke-virtual {v0, p1, v1}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final getKeyStates()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->keyStates:I

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;Z)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "flip"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 355
    iget-object v10, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    invoke-static {v10}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->access$0(Lcom/androidemu/snes/input/VirtualKeypad$Control;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_0

    .line 389
    :goto_0
    return v8

    .line 358
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 360
    .local v0, "action":I
    const/4 v4, -0x1

    .line 362
    .local v4, "pointerUpId":I
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 377
    :pswitch_0
    const/4 v5, 0x0

    .line 378
    .local v5, "states":I
    invoke-static {p1}, Lcom/androidemu/snes/wrapper/Wrapper;->MotionEvent_getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    .line 379
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 388
    invoke-direct {p0, v5}, Lcom/androidemu/snes/input/VirtualKeypad;->setKeyStates(I)V

    move v8, v9

    .line 389
    goto :goto_0

    .line 365
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v5    # "states":I
    :pswitch_1
    invoke-direct {p0, v8}, Lcom/androidemu/snes/input/VirtualKeypad;->setKeyStates(I)V

    move v8, v9

    .line 366
    goto :goto_0

    .line 380
    .restart local v2    # "i":I
    .restart local v3    # "n":I
    .restart local v5    # "states":I
    :cond_1
    invoke-direct {p0, p1, v2, p2}, Lcom/androidemu/snes/input/VirtualKeypad;->getEventX(Landroid/view/MotionEvent;IZ)F

    move-result v6

    .line 381
    .local v6, "x":F
    invoke-direct {p0, p1, v2, p2}, Lcom/androidemu/snes/input/VirtualKeypad;->getEventY(Landroid/view/MotionEvent;IZ)F

    move-result v7

    .line 382
    .local v7, "y":F
    invoke-direct {p0, v6, v7}, Lcom/androidemu/snes/input/VirtualKeypad;->findControl(FF)Lcom/androidemu/snes/input/VirtualKeypad$Control;

    move-result-object v1

    .line 383
    .local v1, "c":Lcom/androidemu/snes/input/VirtualKeypad$Control;
    if-eqz v1, :cond_2

    .line 385
    invoke-static {p1, v2}, Lcom/androidemu/snes/wrapper/Wrapper;->MotionEvent_getSize(Landroid/view/MotionEvent;I)F

    move-result v8

    invoke-direct {p0, v1, v6, v7, v8}, Lcom/androidemu/snes/input/VirtualKeypad;->getControlStates(Lcom/androidemu/snes/input/VirtualKeypad$Control;FFF)I

    move-result v8

    or-int/2addr v5, v8

    .line 379
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidemu/snes/input/VirtualKeypad;->keyStates:I

    .line 86
    return-void
.end method

.method public final resize(II)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 93
    iget-object v10, p0, Lcom/androidemu/snes/input/VirtualKeypad;->context:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 94
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v10, "enableVibrator"

    const/4 v11, 0x1

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/androidemu/snes/input/VirtualKeypad;->vibratorEnabled:Z

    .line 95
    const-string v10, "dpad4Way"

    invoke-interface {v2, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad4Way:Z

    .line 97
    const-string v10, "dpadDeadZone"

    const/4 v11, 0x2

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 98
    .local v7, "value":I
    if-gez v7, :cond_2

    move v7, v8

    .line 99
    :cond_0
    :goto_0
    sget-object v9, Lcom/androidemu/snes/input/VirtualKeypad;->DPAD_DEADZONE_VALUES:[F

    aget v9, v9, v7

    iput v9, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpadDeadZone:F

    .line 101
    const-string v9, "inBetweenPress"

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/androidemu/snes/input/VirtualKeypad;->inBetweenPress:Z

    .line 103
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Lcom/androidemu/snes/input/VirtualKeypad;->pointSizeThreshold:F

    .line 104
    const-string v9, "pointSizePress"

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 105
    const-string v9, "pointSizePressThreshold"

    const/4 v10, 0x7

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 106
    .local v6, "threshold":I
    int-to-float v9, v6

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v9, v10

    const v10, 0x3c23d70a    # 0.01f

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/androidemu/snes/input/VirtualKeypad;->pointSizeThreshold:F

    .line 109
    .end local v6    # "threshold":I
    :cond_1
    iget-object v9, p0, Lcom/androidemu/snes/input/VirtualKeypad;->dpad:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    const-string v10, "hideDpad"

    invoke-interface {v2, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->hide(Z)V

    .line 110
    iget-object v9, p0, Lcom/androidemu/snes/input/VirtualKeypad;->buttons:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    const-string v10, "hideButtons"

    invoke-interface {v2, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->hide(Z)V

    .line 111
    iget-object v9, p0, Lcom/androidemu/snes/input/VirtualKeypad;->selectStart:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    const-string v10, "hideSelectStart"

    invoke-interface {v2, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->hide(Z)V

    .line 112
    iget-object v9, p0, Lcom/androidemu/snes/input/VirtualKeypad;->leftShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    const-string v10, "hideShoulders"

    invoke-interface {v2, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->hide(Z)V

    .line 113
    iget-object v9, p0, Lcom/androidemu/snes/input/VirtualKeypad;->rightShoulder:Lcom/androidemu/snes/input/VirtualKeypad$Control;

    const-string v10, "hideShoulders"

    invoke-interface {v2, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v9, v8}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->hide(Z)V

    .line 115
    int-to-float v8, p1

    iget-object v9, p0, Lcom/androidemu/snes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/androidemu/snes/input/VirtualKeypad;->scaleX:F

    .line 116
    int-to-float v8, p2

    iget-object v9, p0, Lcom/androidemu/snes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/androidemu/snes/input/VirtualKeypad;->scaleY:F

    .line 118
    invoke-static {v2}, Lcom/androidemu/snes/input/VirtualKeypad;->getControlScale(Landroid/content/SharedPreferences;)F

    move-result v1

    .line 119
    .local v1, "controlScale":F
    iget v8, p0, Lcom/androidemu/snes/input/VirtualKeypad;->scaleX:F

    mul-float v4, v8, v1

    .line 120
    .local v4, "sx":F
    iget v8, p0, Lcom/androidemu/snes/input/VirtualKeypad;->scaleY:F

    mul-float v5, v8, v1

    .line 121
    .local v5, "sy":F
    iget-object v8, p0, Lcom/androidemu/snes/input/VirtualKeypad;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 122
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/androidemu/snes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 125
    invoke-direct {p0, p1, p2, v2}, Lcom/androidemu/snes/input/VirtualKeypad;->reposition(IILandroid/content/SharedPreferences;)V

    .line 127
    const-string v8, "vkeypadTransparency"

    const/16 v9, 0x32

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/androidemu/snes/input/VirtualKeypad;->transparency:I

    .line 128
    return-void

    .line 98
    .end local v1    # "controlScale":F
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "sx":F
    .end local v5    # "sy":F
    :cond_2
    if-le v7, v9, :cond_0

    move v7, v9

    goto/16 :goto_0

    .line 122
    .restart local v1    # "controlScale":F
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "sx":F
    .restart local v5    # "sy":F
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidemu/snes/input/VirtualKeypad$Control;

    .line 123
    .local v0, "c":Lcom/androidemu/snes/input/VirtualKeypad$Control;
    invoke-virtual {v0, v3, v4, v5}, Lcom/androidemu/snes/input/VirtualKeypad$Control;->load(Landroid/content/res/Resources;FF)V

    goto :goto_1
.end method
