.class public Lcom/androidemu/EmuMedia;
.super Ljava/lang/Object;
.source "EmuMedia.java"


# static fields
.field private static bitmap:Landroid/graphics/Bitmap;

.field private static holder:Landroid/view/SurfaceHolder;

.field private static onFrameDrawnListener:Lcom/androidemu/Emulator$OnFrameDrawnListener;

.field private static region:Landroid/graphics/Rect;

.field private static track:Landroid/media/AudioTrack;

.field private static volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    .line 22
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    sput v0, Lcom/androidemu/EmuMedia;->volume:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static audioCreate(III)Z
    .locals 10
    .param p0, "rate"    # I
    .param p1, "bits"    # I
    .param p2, "channels"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x3

    const/4 v0, 0x2

    const/4 v8, 0x1

    .line 70
    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    move v4, v0

    .line 73
    .local v4, "format":I
    :goto_0
    if-ne p2, v0, :cond_1

    .line 78
    .local v3, "channelConfig":I
    :goto_1
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 79
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    if-ne v0, p0, :cond_2

    .line 80
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 81
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v0

    if-ne v0, p2, :cond_2

    move v0, v8

    .line 108
    :goto_2
    return v0

    .end local v3    # "channelConfig":I
    .end local v4    # "format":I
    :cond_0
    move v4, v3

    .line 72
    goto :goto_0

    .restart local v4    # "format":I
    :cond_1
    move v3, v0

    .line 75
    goto :goto_1

    .line 84
    .restart local v3    # "channelConfig":I
    :cond_2
    invoke-static {p0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    .line 86
    .local v5, "bufferSize":I
    const/16 v0, 0x5dc

    if-ge v5, v0, :cond_3

    .line 87
    const/16 v5, 0x5dc

    .line 90
    :cond_3
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    .line 91
    const/4 v1, 0x3

    .line 96
    const/4 v6, 0x1

    move v2, p0

    .line 90
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 98
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-nez v0, :cond_4

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_4
    :goto_3
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-nez v0, :cond_5

    .line 105
    const/4 v0, 0x0

    goto :goto_2

    .line 101
    :catch_0
    move-exception v7

    .line 102
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    sput-object v9, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    goto :goto_3

    .line 107
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    sget v1, Lcom/androidemu/EmuMedia;->volume:F

    sget v2, Lcom/androidemu/EmuMedia;->volume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move v0, v8

    .line 108
    goto :goto_2
.end method

.method static audioDestroy()V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 125
    :cond_0
    return-void
.end method

.method static audioPause()V
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 142
    :cond_0
    return-void
.end method

.method static audioPlay([BI)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "size"    # I

    .prologue
    .line 145
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/media/AudioTrack;->write([BII)I

    .line 147
    :cond_0
    return-void
.end method

.method static audioSetVolume(I)V
    .locals 5
    .param p0, "vol"    # I

    .prologue
    .line 112
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v1

    .line 113
    .local v1, "min":F
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    .line 114
    .local v0, "max":F
    sub-float v2, v0, v1

    int-to-float v3, p0

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    sput v2, Lcom/androidemu/EmuMedia;->volume:F

    .line 116
    sget-object v2, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    .line 117
    sget-object v2, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    sget v3, Lcom/androidemu/EmuMedia;->volume:F

    sget v4, Lcom/androidemu/EmuMedia;->volume:F

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 118
    :cond_0
    return-void
.end method

.method static audioStart()V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 130
    :cond_0
    return-void
.end method

.method static audioStop()V
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 135
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 137
    :cond_0
    return-void
.end method

.method static bitBlt(Ljava/nio/Buffer;Z)V
    .locals 7
    .param p0, "src"    # Ljava/nio/Buffer;
    .param p1, "flip"    # Z

    .prologue
    const/4 v6, 0x0

    .line 51
    sget-object v3, Lcom/androidemu/EmuMedia;->holder:Landroid/view/SurfaceHolder;

    if-nez v3, :cond_0

    .line 67
    :goto_0
    return-void

    .line 52
    :cond_0
    if-eqz p0, :cond_1

    .line 53
    invoke-virtual {p0, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 54
    sget-object v3, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 56
    :cond_1
    sget-object v3, Lcom/androidemu/EmuMedia;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 57
    .local v2, "canvas":Landroid/graphics/Canvas;
    if-eqz p1, :cond_2

    .line 58
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 60
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    sget-object v3, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget-object v4, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v0, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 61
    .local v0, "SRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    sget-object v3, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget-object v4, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 62
    .local v1, "TRect":Landroid/graphics/Rect;
    sget-object v3, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 64
    sget-object v3, Lcom/androidemu/EmuMedia;->onFrameDrawnListener:Lcom/androidemu/Emulator$OnFrameDrawnListener;

    if-eqz v3, :cond_3

    .line 65
    sget-object v3, Lcom/androidemu/EmuMedia;->onFrameDrawnListener:Lcom/androidemu/Emulator$OnFrameDrawnListener;

    invoke-interface {v3, v2}, Lcom/androidemu/Emulator$OnFrameDrawnListener;->onFrameDrawn(Landroid/graphics/Canvas;)V

    .line 66
    :cond_3
    sget-object v3, Lcom/androidemu/EmuMedia;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method static destroy()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 29
    :cond_0
    return-void
.end method

.method public static setOnFrameDrawnListener(Lcom/androidemu/Emulator$OnFrameDrawnListener;)V
    .locals 0
    .param p0, "l"    # Lcom/androidemu/Emulator$OnFrameDrawnListener;

    .prologue
    .line 33
    sput-object p0, Lcom/androidemu/EmuMedia;->onFrameDrawnListener:Lcom/androidemu/Emulator$OnFrameDrawnListener;

    .line 34
    return-void
.end method

.method static setSurface(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p0, "h"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 37
    sput-object p0, Lcom/androidemu/EmuMedia;->holder:Landroid/view/SurfaceHolder;

    .line 38
    return-void
.end method

.method static setSurfaceRegion(IIII)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 41
    sget-object v0, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    add-int v1, p0, p2

    add-int v2, p1, p3

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 42
    sget-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_0

    sget-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 43
    :cond_0
    sget-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 46
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    .line 48
    :cond_2
    return-void
.end method
