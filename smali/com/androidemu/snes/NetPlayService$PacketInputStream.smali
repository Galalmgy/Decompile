.class Lcom/androidemu/snes/NetPlayService$PacketInputStream;
.super Ljava/lang/Object;
.source "NetPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/snes/NetPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PacketInputStream"
.end annotation


# instance fields
.field private final stream:Ljava/io/InputStream;

.field private final twoBytes:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/InputStream;

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/androidemu/snes/NetPlayService$PacketInputStream;->twoBytes:[B

    .line 427
    iput-object p1, p0, Lcom/androidemu/snes/NetPlayService$PacketInputStream;->stream:Ljava/io/InputStream;

    .line 428
    return-void
.end method


# virtual methods
.method public readBytes([B)[B
    .locals 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "bytes":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 445
    return-object p1

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/androidemu/snes/NetPlayService$PacketInputStream;->stream:Ljava/io/InputStream;

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 441
    .local v1, "n":I
    if-gez v1, :cond_1

    .line 442
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 443
    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public readPacket()Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    iget-object v2, p0, Lcom/androidemu/snes/NetPlayService$PacketInputStream;->twoBytes:[B

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/NetPlayService$PacketInputStream;->readBytes([B)[B

    .line 432
    iget-object v2, p0, Lcom/androidemu/snes/NetPlayService$PacketInputStream;->twoBytes:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    iget-object v3, p0, Lcom/androidemu/snes/NetPlayService$PacketInputStream;->twoBytes:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    or-int v1, v2, v3

    .line 433
    .local v1, "len":I
    new-array v0, v1, [B

    .line 434
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Lcom/androidemu/snes/NetPlayService$PacketInputStream;->readBytes([B)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method
