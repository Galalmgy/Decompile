.class Lcom/androidemu/snes/NetPlayService$BluetoothServerThread;
.super Lcom/androidemu/snes/NetPlayService$NetThread;
.source "NetPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/snes/NetPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothServerThread"
.end annotation


# instance fields
.field private serverSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private socket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/androidemu/snes/NetPlayService;


# direct methods
.method public constructor <init>(Lcom/androidemu/snes/NetPlayService;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    iput-object p1, p0, Lcom/androidemu/snes/NetPlayService$BluetoothServerThread;->this$0:Lcom/androidemu/snes/NetPlayService;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/androidemu/snes/NetPlayService$NetThread;-><init>(Lcom/androidemu/snes/NetPlayService;Lcom/androidemu/snes/NetPlayService$NetThread;)V

    .line 298
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 300
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const-string v1, "Nesoid"

    invoke-static {}, Lcom/androidemu/snes/NetPlayService;->access$2()Ljava/util/UUID;

    move-result-object v2

    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/androidemu/snes/NetPlayService$BluetoothServerThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 301
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/androidemu/snes/NetPlayService$BluetoothServerThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/androidemu/snes/NetPlayService$BluetoothServerThread;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/androidemu/snes/NetPlayService$BluetoothServerThread;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    :cond_0
    :goto_1
    return-void

    .line 321
    :catch_0
    move-exception v0

    goto :goto_1

    .line 316
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected runIO()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/androidemu/snes/NetPlayService$BluetoothServerThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/snes/NetPlayService$BluetoothServerThread;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 306
    iget-object v0, p0, Lcom/androidemu/snes/NetPlayService$BluetoothServerThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 308
    iget-object v0, p0, Lcom/androidemu/snes/NetPlayService$BluetoothServerThread;->this$0:Lcom/androidemu/snes/NetPlayService;

    iget-object v1, p0, Lcom/androidemu/snes/NetPlayService$BluetoothServerThread;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 309
    iget-object v2, p0, Lcom/androidemu/snes/NetPlayService$BluetoothServerThread;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 308
    invoke-static {v0, v1, v2}, Lcom/androidemu/snes/NetPlayService;->access$3(Lcom/androidemu/snes/NetPlayService;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 310
    return-void
.end method
