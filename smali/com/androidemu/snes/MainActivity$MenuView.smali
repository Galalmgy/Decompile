.class public Lcom/androidemu/snes/MainActivity$MenuView;
.super Landroid/view/SurfaceView;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/snes/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuView"
.end annotation


# instance fields
.field BackBMP:Landroid/graphics/Bitmap;

.field Demo:Z

.field GameBMP:Landroid/graphics/Bitmap;

.field GameIdx:I

.field GameMax:I

.field KeyFlag:I

.field ListBMP:Landroid/graphics/Bitmap;

.field Mode:Z

.field Name:Ljava/lang/String;

.field NameBMP:Landroid/graphics/Bitmap;

.field PageBeg:I

.field PageMax:I

.field Path:Ljava/lang/String;

.field ROMInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ROMTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field ZIPList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCanvas:Landroid/graphics/Canvas;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/androidemu/snes/MainActivity;


# direct methods
.method public constructor <init>(Lcom/androidemu/snes/MainActivity;Landroid/content/Context;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 358
    iput-object p1, p0, Lcom/androidemu/snes/MainActivity$MenuView;->this$0:Lcom/androidemu/snes/MainActivity;

    .line 359
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 212
    iput-boolean v6, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Mode:Z

    .line 216
    iput v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageBeg:I

    const/16 v2, 0x8

    iput v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageMax:I

    iput v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    const/16 v2, 0x64

    iput v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameMax:I

    iput v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->KeyFlag:I

    .line 218
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ROMTime:Ljava/util/HashMap;

    .line 219
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ROMInfo:Ljava/util/HashMap;

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    .line 360
    const-string v2, "VSFC"

    const-string v3, "MenuView!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput-object p2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mContext:Landroid/content/Context;

    .line 363
    invoke-virtual {p0, v6}, Lcom/androidemu/snes/MainActivity$MenuView;->setZOrderOnTop(Z)V

    .line 365
    const-string v2, "GUI/List.jpg"

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/MainActivity$MenuView;->LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ListBMP:Landroid/graphics/Bitmap;

    .line 366
    const-string v2, "GUI/Back.png"

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/MainActivity$MenuView;->LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->BackBMP:Landroid/graphics/Bitmap;

    .line 368
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 369
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, -0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 370
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/16 v3, 0x500

    const/16 v4, 0x2d0

    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 372
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/sdcard/com.vrt.varc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, "varc":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v2, "/mnt/sdcard/com.vrt.vapp"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, "vapp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Demo:Z

    .line 379
    :goto_0
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->GetList()V

    .line 380
    return-void

    .line 377
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Demo:Z

    goto :goto_0
.end method


# virtual methods
.method public DrawBitmap(Landroid/graphics/Bitmap;III)V
    .locals 5
    .param p1, "BMP"    # Landroid/graphics/Bitmap;
    .param p2, "X"    # I
    .param p3, "Y"    # I
    .param p4, "A"    # I

    .prologue
    const/4 v4, 0x0

    .line 413
    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_0

    .line 416
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 417
    .local v0, "SRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 418
    .local v1, "TRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 420
    .end local v0    # "SRect":Landroid/graphics/Rect;
    .end local v1    # "TRect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public DrawBitmap(Landroid/graphics/Bitmap;IIIII)V
    .locals 5
    .param p1, "BMP"    # Landroid/graphics/Bitmap;
    .param p2, "X"    # I
    .param p3, "Y"    # I
    .param p4, "W"    # I
    .param p5, "H"    # I
    .param p6, "A"    # I

    .prologue
    const/4 v4, 0x0

    .line 423
    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_0

    .line 426
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 427
    .local v0, "SRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 428
    .local v1, "TRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 430
    .end local v0    # "SRect":Landroid/graphics/Rect;
    .end local v1    # "TRect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public DrawBitmap(Landroid/graphics/Bitmap;IIIIIII)V
    .locals 4
    .param p1, "BMP"    # Landroid/graphics/Bitmap;
    .param p2, "L"    # I
    .param p3, "T"    # I
    .param p4, "W"    # I
    .param p5, "H"    # I
    .param p6, "X"    # I
    .param p7, "Y"    # I
    .param p8, "A"    # I

    .prologue
    .line 433
    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_0

    .line 436
    new-instance v0, Landroid/graphics/Rect;

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-direct {v0, p2, p3, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 437
    .local v0, "SRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p6, p4

    add-int v3, p7, p5

    invoke-direct {v1, p6, p7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 438
    .local v1, "TRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 440
    .end local v0    # "SRect":Landroid/graphics/Rect;
    .end local v1    # "TRect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public DrawColor(I)V
    .locals 1
    .param p1, "C"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 396
    :cond_0
    return-void
.end method

.method public DrawList()V
    .locals 13

    .prologue
    .line 539
    const/16 v0, 0x8

    new-array v9, v0, [I

    fill-array-data v9, :array_0

    .line 540
    .local v9, "MenuX":[I
    const/16 v0, 0x8

    new-array v10, v0, [I

    fill-array-data v10, :array_1

    .line 541
    .local v10, "MenuY":[I
    const/16 v0, 0x8

    new-array v7, v0, [I

    fill-array-data v7, :array_2

    .line 542
    .local v7, "BackX":[I
    const/16 v0, 0x8

    new-array v8, v0, [I

    fill-array-data v8, :array_3

    .line 543
    .local v8, "BackY":[I
    iget v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameMax:I

    if-nez v0, :cond_1

    .line 545
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawColor(I)V

    .line 546
    const-string v1, "VSFC V3.6"

    const/16 v2, 0x3a0

    const/16 v3, 0x2b8

    const/high16 v4, -0x10000

    const/16 v5, 0x28

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawString(Ljava/lang/String;IIII)V

    .line 547
    const-string v1, "\u8bf7\u63d2\u6e38\u620f\u5361\uff0c\u91cd\u65b0\u5f00\u673a\uff01"

    const/16 v2, 0x1b8

    const/16 v3, 0x168

    const/high16 v4, -0x10000

    const/16 v5, 0x28

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawString(Ljava/lang/String;IIII)V

    .line 548
    const-string v1, "Please insert game card then reboot!"

    const/16 v2, 0xf0

    const/16 v3, 0x1b8

    const/high16 v4, -0x10000

    const/16 v5, 0x28

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawString(Ljava/lang/String;IIII)V

    .line 587
    :cond_0
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ListBMP:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawBitmap(Landroid/graphics/Bitmap;III)V

    .line 552
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/16 v0, 0x8

    if-ge v12, v0, :cond_0

    .line 554
    iget v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageBeg:I

    add-int/2addr v0, v12

    iget v1, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameMax:I

    if-ge v0, v1, :cond_0

    .line 556
    iget v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    iget v1, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageBeg:I

    sub-int/2addr v0, v1

    if-ne v0, v12, :cond_3

    .line 558
    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->BackBMP:Landroid/graphics/Bitmap;

    aget v1, v7, v12

    aget v2, v8, v12

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawBitmap(Landroid/graphics/Bitmap;III)V

    .line 560
    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->NameBMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 561
    iget-object v1, p0, Lcom/androidemu/snes/MainActivity$MenuView;->NameBMP:Landroid/graphics/Bitmap;

    const/16 v2, 0x69

    const/16 v3, 0x6c

    const/16 v4, 0x100

    const/16 v5, 0xf0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawBitmap(Landroid/graphics/Bitmap;IIIII)V

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameBMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 564
    iget-object v1, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameBMP:Landroid/graphics/Bitmap;

    const/16 v2, 0x69

    const/16 v3, 0x18a

    const/16 v4, 0x100

    const/16 v5, 0xf0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawBitmap(Landroid/graphics/Bitmap;IIIII)V

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ROMInfo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageBeg:I

    add-int/2addr v2, v12

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 568
    new-instance v11, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Path:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/roms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageBeg:I

    add-int/2addr v2, v12

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".smc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    .local v11, "ROMFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "%04d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageBeg:I

    add-int/2addr v4, v12

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ROMInfo:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageBeg:I

    add-int/2addr v3, v12

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget v2, v9, v12

    aget v3, v10, v12

    const/4 v4, -0x1

    const/16 v5, 0x28

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawString(Ljava/lang/String;IIII)V

    .line 581
    .end local v11    # "ROMFile":Ljava/io/File;
    :cond_4
    :goto_1
    const/4 v0, 0x0
    iget-boolean v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Demo:Z

    goto :cond_5

    .line 582
    const-string v1, "DEMO"

    const/4 v2, 0x0

    const/16 v3, 0x28

    const/4 v4, -0x1

    const/16 v5, 0x28

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawString(Ljava/lang/String;IIII)V

    .line 552
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 573
    .restart local v11    # "ROMFile":Ljava/io/File;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "%04d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageBeg:I

    add-int/2addr v4, v12

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ROMInfo:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageBeg:I

    add-int/2addr v3, v12

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget v2, v9, v12

    aget v3, v10, v12

    const v4, -0x777778

    const/16 v5, 0x28

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawString(Ljava/lang/String;IIII)V

    .line 574
    iget v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    if-ne v0, v12, :cond_4

    .line 575
    const-string v1, "\u8be5\u6e38\u620f\u4e0d\u5b58\u5728\uff01"

    const/16 v2, 0x390

    const/16 v3, 0x2b8

    const/4 v4, -0x1

    const/16 v5, 0x28

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawString(Ljava/lang/String;IIII)V

    goto :goto_1

    .line 579
    .end local v11    # "ROMFile":Ljava/io/File;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "%04d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageBeg:I

    add-int/2addr v4, v12

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageBeg:I

    add-int/2addr v2, v12

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget v2, v9, v12

    aget v3, v10, v12

    const/4 v4, -0x1

    const/16 v5, 0x28

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawString(Ljava/lang/String;IIII)V

    goto/16 :goto_1

    .line 539
    :array_0
    .array-data 4
        0x23a
        0x23a
        0x23a
        0x23a
        0x23a
        0x23a
        0x23a
        0x23a
    .end array-data

    .line 540
    :array_1
    .array-data 4
        0x78
        0xc1
        0x10a
        0x153
        0x19c
        0x1e5
        0x22e
        0x277
    .end array-data

    .line 541
    :array_2
    .array-data 4
        0x211
        0x211
        0x211
        0x211
        0x211
        0x211
        0x211
        0x211
    .end array-data

    .line 542
    :array_3
    .array-data 4
        0x34
        0x7d
        0xc6
        0x10f
        0x158
        0x1a1
        0x1ea
        0x233
    .end array-data
.end method

.method public DrawString(Ljava/lang/String;IIII)V
    .locals 4
    .param p1, "T"    # Ljava/lang/String;
    .param p2, "X"    # I
    .param p3, "Y"    # I
    .param p4, "C"    # I
    .param p5, "S"    # I

    .prologue
    .line 399
    iget-object v1, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_0

    .line 401
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 402
    .local v0, "mPaint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 403
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 406
    int-to-float v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 407
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 408
    iget-object v1, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 410
    .end local v0    # "mPaint":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public Get1PUSBInput()Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 275
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v3

    .line 276
    .local v3, "ids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-lt v2, v5, :cond_0

    .line 287
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 278
    :cond_0
    aget v5, v3, v2

    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 279
    .local v4, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "Name":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v0

    .line 283
    .local v0, "ID":I
    const-string v5, "Microntek"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_1

    const-string v5, "SHANWAN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_2

    .line 284
    :cond_1
    const/high16 v5, 0x10000

    if-ge v0, v5, :cond_2

    .line 285
    const/4 v5, 0x1

    goto :goto_1

    .line 276
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public GetList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->getFilePath()Ljava/lang/String;

    .line 292
    const-string v5, "VSFC"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Path:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :try_start_0
    new-instance v3, Lcom/csvreader/CsvReader;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Path:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "GUI/VSFC.csv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2c

    const-string v7, "GBK"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lcom/csvreader/CsvReader;-><init>(Ljava/lang/String;CLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 299
    .local v3, "csvReader":Lcom/csvreader/CsvReader;
    :try_start_1
    iget-object v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ROMInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 300
    :goto_0
    invoke-virtual {v3}, Lcom/csvreader/CsvReader;->readRecord()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_0

    .line 332
    .end local v3    # "csvReader":Lcom/csvreader/CsvReader;
    :goto_1
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->getFileList()Ljava/util/List;

    .line 333
    iget-object v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 334
    iget-object v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameMax:I

    .line 337
    :goto_2
    return-void

    .line 303
    .restart local v3    # "csvReader":Lcom/csvreader/CsvReader;
    :cond_0
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v3, v5}, Lcom/csvreader/CsvReader;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "File":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/csvreader/CsvReader;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "Name":Ljava/lang/String;
    iget-object v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ROMInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 310
    const/4 v5, 0x2

    :try_start_3
    invoke-virtual {v3, v5}, Lcom/csvreader/CsvReader;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 311
    .local v2, "Time":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_1

    .line 312
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Mode:Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 318
    :cond_1
    :goto_3
    :try_start_4
    iget-object v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ROMTime:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v5, "VSFC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 322
    .end local v0    # "File":Ljava/lang/String;
    .end local v1    # "Name":Ljava/lang/String;
    .end local v2    # "Time":Ljava/lang/Integer;
    :catch_0
    move-exception v4

    .line 324
    .local v4, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 327
    .end local v3    # "csvReader":Lcom/csvreader/CsvReader;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 329
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 314
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "File":Ljava/lang/String;
    .restart local v1    # "Name":Ljava/lang/String;
    .restart local v3    # "csvReader":Lcom/csvreader/CsvReader;
    :catch_2
    move-exception v4

    .line 316
    .local v4, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    :try_start_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v2

    .restart local v2    # "Time":Ljava/lang/Integer;
    goto :goto_3

    .line 336
    .end local v0    # "File":Ljava/lang/String;
    .end local v1    # "Name":Ljava/lang/String;
    .end local v2    # "Time":Ljava/lang/Integer;
    .end local v3    # "csvReader":Lcom/csvreader/CsvReader;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iput v8, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameMax:I

    goto :goto_2
.end method

.method public InitList()V
    .locals 3

    .prologue
    .line 340
    iget v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameMax:I

    if-lez v0, :cond_3

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "GUI/"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Name.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidemu/snes/MainActivity$MenuView;->LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->NameBMP:Landroid/graphics/Bitmap;

    .line 343
    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->NameBMP:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "GUI/"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_000.bmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidemu/snes/MainActivity$MenuView;->LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->NameBMP:Landroid/graphics/Bitmap;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->NameBMP:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "GUI/"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_000.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidemu/snes/MainActivity$MenuView;->LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->NameBMP:Landroid/graphics/Bitmap;

    .line 348
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "GUI/"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Game.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidemu/snes/MainActivity$MenuView;->LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameBMP:Landroid/graphics/Bitmap;

    .line 349
    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameBMP:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "GUI/"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_001.bmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidemu/snes/MainActivity$MenuView;->LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameBMP:Landroid/graphics/Bitmap;

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameBMP:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "GUI/"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_001.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidemu/snes/MainActivity$MenuView;->LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameBMP:Landroid/graphics/Bitmap;

    .line 354
    :cond_3
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->LockCanvas()V

    .line 355
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawList()V

    .line 356
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->PostCanvas()V

    .line 357
    return-void
.end method

.method public LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "BMPPath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 466
    const/4 v6, 0x0

    .line 467
    .local v6, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 469
    .local v2, "buf":[B
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Path:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 472
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    move-object v6, v7

    .line 480
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v2, v9, [B

    .line 481
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    .line 482
    const-string v9, ".png"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_0

    .line 483
    const/4 v9, 0x0

    aget-byte v9, v2, v9

    if-nez v9, :cond_0

    .line 484
    const/4 v9, 0x1

    aget-byte v9, v2, v9

    if-nez v9, :cond_0

    .line 485
    const/4 v9, 0x2

    aget-byte v9, v2, v9

    if-nez v9, :cond_0

    .line 486
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    if-nez v9, :cond_0

    .line 487
    const/4 v9, 0x4

    aget-byte v9, v2, v9

    if-nez v9, :cond_0

    .line 488
    const/4 v9, 0x5

    aget-byte v9, v2, v9

    if-nez v9, :cond_0

    .line 489
    const/4 v9, 0x6

    aget-byte v9, v2, v9

    if-nez v9, :cond_0

    .line 490
    const/4 v9, 0x7

    aget-byte v9, v2, v9

    if-nez v9, :cond_0

    .line 494
    const/16 v9, 0x12

    aget-byte v9, v2, v9

    and-int/lit16 v8, v9, 0xff

    .line 495
    .local v8, "w":I
    shl-int/lit8 v8, v8, 0x8

    .line 496
    const/16 v9, 0x13

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    .line 498
    const/16 v9, 0x16

    aget-byte v9, v2, v9

    and-int/lit16 v5, v9, 0xff

    .line 499
    .local v5, "h":I
    shl-int/lit8 v5, v5, 0x8

    .line 500
    const/16 v9, 0x17

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v5, v9

    .line 502
    array-length v9, v2

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v11, :cond_2

    .line 504
    shl-int/lit8 v8, v8, 0x1

    .line 505
    shl-int/lit8 v5, v5, 0x1

    .line 513
    :goto_1
    const/4 v9, 0x0

    const/16 v10, -0x77

    aput-byte v10, v2, v9

    .line 514
    const/4 v9, 0x1

    const/16 v10, 0x50

    aput-byte v10, v2, v9

    .line 515
    const/4 v9, 0x2

    const/16 v10, 0x4e

    aput-byte v10, v2, v9

    .line 516
    const/4 v9, 0x3

    const/16 v10, 0x47

    aput-byte v10, v2, v9

    .line 517
    const/4 v9, 0x4

    const/16 v10, 0xd

    aput-byte v10, v2, v9

    .line 518
    const/4 v9, 0x5

    const/16 v10, 0xa

    aput-byte v10, v2, v9

    .line 519
    const/4 v9, 0x6

    const/16 v10, 0x1a

    aput-byte v10, v2, v9

    .line 520
    const/4 v9, 0x7

    const/16 v10, 0xa

    aput-byte v10, v2, v9

    .line 522
    const/16 v9, 0x12

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 523
    const/16 v9, 0x13

    and-int/lit16 v10, v8, 0xff

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 525
    const/16 v9, 0x16

    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 526
    const/16 v9, 0x17

    and-int/lit16 v10, v5, 0xff

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 528
    .end local v5    # "h":I
    .end local v8    # "w":I
    :cond_0
    const/4 v9, 0x0

    array-length v10, v2

    invoke-static {v2, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 529
    .local v0, "BMP":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 534
    .end local v0    # "BMP":Landroid/graphics/Bitmap;
    .end local v4    # "file":Ljava/io/File;
    :goto_2
    return-object v0

    .line 476
    .restart local v4    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 477
    .local v1, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 509
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v5    # "h":I
    .restart local v8    # "w":I
    :cond_2
    shr-int/lit8 v8, v8, 0x1

    .line 510
    shr-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 532
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "h":I
    .end local v8    # "w":I
    :catch_0
    move-exception v3

    .line 534
    .local v3, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public LockCanvas()V
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mCanvas:Landroid/graphics/Canvas;

    .line 384
    return-void
.end method

.method public PostCanvas()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 389
    :cond_0
    return-void
.end method

.method public getFileList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-boolean v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Mode:Z

    if-eqz v5, :cond_0

    .line 249
    const/4 v4, 0x0

    .line 250
    .local v4, "listFiles":[Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Path:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "roms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 257
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-lt v2, v5, :cond_2

    .line 269
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v4    # "listFiles":[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    :goto_1
    return-object v5

    .line 254
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "listFiles":[Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    goto :goto_1

    .line 259
    .restart local v2    # "i":I
    :cond_2
    aget-object v5, v4, v2

    const-string v6, ".smc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 260
    .local v3, "j":I
    if-lez v3, :cond_3

    .line 262
    aget-object v5, v4, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "Name":Ljava/lang/String;
    iget-object v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ROMInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 264
    iget-object v5, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    .end local v0    # "Name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, "Dir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "Dir":Ljava/io/File;
    const-string v1, "/mnt/extsd/VSFC/roms/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .restart local v0    # "Dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 229
    const-string v1, "/mnt/extsd/VSFC/"

    iput-object v1, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Path:Ljava/lang/String;

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Path:Ljava/lang/String;

    return-object v1

    .line 233
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "Dir":Ljava/io/File;
    const-string v1, "/mnt/external_sd/VSFC/roms/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v0    # "Dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 235
    const-string v1, "/mnt/external_sd/VSFC/"

    iput-object v1, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Path:Ljava/lang/String;

    goto :goto_0

    .line 237
    :cond_1
    const-string v1, "/mnt/sdcard/VSFC/"

    iput-object v1, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Path:Ljava/lang/String;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 591
    const-string v3, "VSFC"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onKeyDown "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/16 v3, 0x6f

    if-ne p1, v3, :cond_1

    .line 594
    iget-object v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->this$0:Lcom/androidemu/snes/MainActivity;

    invoke-virtual {v3}, Lcom/androidemu/snes/MainActivity;->finish()V

    .line 595
    iget-object v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->this$0:Lcom/androidemu/snes/MainActivity;

    invoke-virtual {v3, v6, v6}, Lcom/androidemu/snes/MainActivity;->overridePendingTransition(II)V

    .line 679
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 599
    :cond_1
    iget v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameMax:I

    if-eqz v3, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->Get1PUSBInput()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 603
    const-string v3, "VSFC"

    const-string v4, "Found 1PUSBInput!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wm_keyboard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 607
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 664
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "GUI/"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v4, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Name.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/MainActivity$MenuView;->LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->NameBMP:Landroid/graphics/Bitmap;

    .line 665
    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->NameBMP:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "GUI/"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v4, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_000.bmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/MainActivity$MenuView;->LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->NameBMP:Landroid/graphics/Bitmap;

    .line 667
    :cond_4
    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->NameBMP:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "GUI/"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v4, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_000.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/MainActivity$MenuView;->LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->NameBMP:Landroid/graphics/Bitmap;

    .line 670
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "GUI/"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v4, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Game.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/MainActivity$MenuView;->LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameBMP:Landroid/graphics/Bitmap;

    .line 671
    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameBMP:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "GUI/"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v4, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_001.bmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/MainActivity$MenuView;->LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameBMP:Landroid/graphics/Bitmap;

    .line 673
    :cond_6
    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameBMP:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    .line 674
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "GUI/"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v4, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_001.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/MainActivity$MenuView;->LoadBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameBMP:Landroid/graphics/Bitmap;

    .line 675
    :cond_7
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    iget v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageMax:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageMax:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageBeg:I

    .line 676
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->LockCanvas()V

    .line 677
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->DrawList()V

    .line 678
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->PostCanvas()V

    .line 679
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 610
    :sswitch_1
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->KeyFlag:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->KeyFlag:I

    goto/16 :goto_1

    .line 613
    :sswitch_2
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->KeyFlag:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->KeyFlag:I

    goto/16 :goto_1

    .line 616
    :sswitch_3
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->KeyFlag:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->KeyFlag:I

    goto/16 :goto_1

    .line 619
    :sswitch_4
    iget-object v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->this$0:Lcom/androidemu/snes/MainActivity;

    invoke-virtual {v3}, Lcom/androidemu/snes/MainActivity;->finish()V

    .line 620
    iget-object v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->this$0:Lcom/androidemu/snes/MainActivity;

    invoke-virtual {v3, v6, v6}, Lcom/androidemu/snes/MainActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 626
    :sswitch_5
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    .line 627
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    if-gez v2, :cond_3

    .line 628
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameMax:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    goto/16 :goto_1

    .line 632
    :sswitch_6
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    .line 633
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    iget v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameMax:I

    if-lt v2, v3, :cond_3

    .line 634
    iput v6, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    goto/16 :goto_1

    .line 638
    :sswitch_7
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    iget v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageMax:I

    div-int/2addr v2, v3

    if-lez v2, :cond_3

    .line 639
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    iget v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageMax:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    goto/16 :goto_1

    .line 643
    :sswitch_8
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    iget v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageMax:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameMax:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageMax:I

    div-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    .line 645
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    iget v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->PageMax:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    .line 646
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    iget v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameMax:I

    if-lt v2, v3, :cond_3

    .line 647
    iget v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameMax:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    goto/16 :goto_1

    .line 653
    :sswitch_9
    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->ZIPList:Ljava/util/List;

    iget v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->GameIdx:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Name:Ljava/lang/String;

    .line 654
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Path:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/roms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".smc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 655
    .local v0, "ROMFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 657
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/roms/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/androidemu/snes/MainActivity$MenuView;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".smc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/androidemu/snes/EmulatorActivity;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 658
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 659
    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 660
    iget-object v2, p0, Lcom/androidemu/snes/MainActivity$MenuView;->this$0:Lcom/androidemu/snes/MainActivity;

    invoke-virtual {v2, v6, v6}, Lcom/androidemu/snes/MainActivity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 607
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_7
        0x16 -> :sswitch_8
        0x1d -> :sswitch_7
        0x1f -> :sswitch_1
        0x20 -> :sswitch_8
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x2f -> :sswitch_6
        0x33 -> :sswitch_5
        0x42 -> :sswitch_9
        0x6c -> :sswitch_9
        0xc5 -> :sswitch_9
    .end sparse-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 444
    const-string v0, "VSFC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "surfaceChanged!Width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->InitList()V

    .line 446
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x1

    .line 450
    const-string v0, "VSFC"

    const-string v1, "surfaceCreated!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0, v2}, Lcom/androidemu/snes/MainActivity$MenuView;->setFocusable(Z)V

    .line 452
    invoke-virtual {p0, v2}, Lcom/androidemu/snes/MainActivity$MenuView;->setFocusableInTouchMode(Z)V

    .line 453
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->requestFocus()Z

    .line 454
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity$MenuView;->requestFocusFromTouch()Z

    .line 455
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 460
    return-void
.end method
