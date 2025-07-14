.class public Lcom/androidemu/EmulatorView;
.super Landroid/view/SurfaceView;
.source "EmulatorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidemu/EmulatorView$OnTrackballListener;
    }
.end annotation


# static fields
.field public static final SCALING_2X:I = 0x1

.field public static final SCALING_ORIGINAL:I = 0x0

.field public static final SCALING_PROPORTIONAL:I = 0x2

.field public static final SCALING_STRETCH:I = 0x3


# instance fields
.field private actualHeight:I

.field private actualWidth:I

.field private aspectRatio:F

.field private onTrackballListener:Lcom/androidemu/EmulatorView$OnTrackballListener;

.field private scalingMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v1, 0x2

    iput v1, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    .line 31
    invoke-virtual {p0}, Lcom/androidemu/EmulatorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 32
    .local v0, "holder":Landroid/view/SurfaceHolder;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 33
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 35
    invoke-virtual {p0, v2}, Lcom/androidemu/EmulatorView;->setFocusableInTouchMode(Z)V

    .line 36
    return-void
.end method

.method private updateSurfaceSize()V
    .locals 6

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/androidemu/EmulatorView;->getWidth()I

    move-result v2

    .line 66
    .local v2, "viewWidth":I
    invoke-virtual {p0}, Lcom/androidemu/EmulatorView;->getHeight()I

    move-result v1

    .line 67
    .local v1, "viewHeight":I
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 68
    iget v4, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    if-nez v4, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v3, 0x0

    .line 72
    .local v3, "w":I
    const/4 v0, 0x0

    .line 74
    .local v0, "h":I
    iget v4, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/androidemu/EmulatorView;->aspectRatio:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 75
    int-to-float v4, v2

    iget v5, p0, Lcom/androidemu/EmulatorView;->aspectRatio:F

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 77
    :cond_2
    iget v4, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    packed-switch v4, :pswitch_data_0

    .line 96
    :cond_3
    :goto_1
    :pswitch_0
    iget v4, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    if-lt v3, v4, :cond_4

    iget v4, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    if-ge v0, v4, :cond_5

    .line 97
    :cond_4
    iget v0, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    .line 98
    mul-int v4, v0, v2

    div-int v3, v4, v1

    .line 99
    iget v4, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    if-ge v3, v4, :cond_5

    .line 100
    iget v3, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    .line 101
    mul-int v4, v3, v1

    div-int v0, v4, v2

    .line 104
    :cond_5
    invoke-virtual {p0}, Lcom/androidemu/EmulatorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0

    .line 79
    :pswitch_1
    move v3, v2

    .line 80
    move v0, v1

    .line 81
    goto :goto_1

    .line 84
    :pswitch_2
    div-int/lit8 v3, v2, 0x2

    .line 85
    div-int/lit8 v0, v1, 0x2

    .line 86
    goto :goto_1

    .line 89
    :pswitch_3
    iget v4, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    mul-int/2addr v5, v1

    if-lt v4, v5, :cond_3

    .line 90
    iget v3, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    .line 91
    iget v0, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    goto :goto_1

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/androidemu/EmulatorView;->updateSurfaceSize()V

    .line 110
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/androidemu/EmulatorView;->onTrackballListener:Lcom/androidemu/EmulatorView$OnTrackballListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/androidemu/EmulatorView;->onTrackballListener:Lcom/androidemu/EmulatorView$OnTrackballListener;

    invoke-interface {v0, p1}, Lcom/androidemu/EmulatorView$OnTrackballListener;->onTrackball(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setActualSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 43
    iget v0, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    if-eq v0, p2, :cond_1

    .line 44
    :cond_0
    iput p1, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    .line 45
    iput p2, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    .line 46
    invoke-direct {p0}, Lcom/androidemu/EmulatorView;->updateSurfaceSize()V

    .line 48
    :cond_1
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 58
    iget v0, p0, Lcom/androidemu/EmulatorView;->aspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 59
    iput p1, p0, Lcom/androidemu/EmulatorView;->aspectRatio:F

    .line 60
    invoke-direct {p0}, Lcom/androidemu/EmulatorView;->updateSurfaceSize()V

    .line 62
    :cond_0
    return-void
.end method

.method public setOnTrackballListener(Lcom/androidemu/EmulatorView$OnTrackballListener;)V
    .locals 0
    .param p1, "l"    # Lcom/androidemu/EmulatorView$OnTrackballListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/androidemu/EmulatorView;->onTrackballListener:Lcom/androidemu/EmulatorView$OnTrackballListener;

    .line 40
    return-void
.end method

.method public setScalingMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 51
    iget v0, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    if-eq v0, p1, :cond_0

    .line 52
    iput p1, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    .line 53
    invoke-direct {p0}, Lcom/androidemu/EmulatorView;->updateSurfaceSize()V

    .line 55
    :cond_0
    return-void
.end method
