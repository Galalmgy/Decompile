.class Lcom/androidemu/snes/EmulatorActivity$1;
.super Landroid/os/Handler;
.source "EmulatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/snes/EmulatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidemu/snes/EmulatorActivity;


# direct methods
.method constructor <init>(Lcom/androidemu/snes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    .line 1123
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1126
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$0(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/snes/NetPlayService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1131
    :sswitch_0
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$1(Lcom/androidemu/snes/EmulatorActivity;)V

    .line 1132
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$0(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/snes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/snes/NetPlayService;->isServer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1133
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$2(Lcom/androidemu/snes/EmulatorActivity;)V

    .line 1135
    :cond_2
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$3(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/Emulator;

    move-result-object v2

    iget-object v3, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v2, v3}, Lcom/androidemu/Emulator;->setFrameUpdateListener(Lcom/androidemu/Emulator$FrameUpdateListener;)V

    .line 1136
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$0(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/snes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/snes/NetPlayService;->sendMessageReply()V

    .line 1138
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$4(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1139
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$4(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->dismiss()V

    .line 1140
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2, v4}, Lcom/androidemu/snes/EmulatorActivity;->access$5(Lcom/androidemu/snes/EmulatorActivity;Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;)V

    goto :goto_0

    .line 1145
    :sswitch_1
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$6(Lcom/androidemu/snes/EmulatorActivity;)V

    .line 1147
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$4(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1148
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$4(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;->dismiss()V

    .line 1149
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2, v4}, Lcom/androidemu/snes/EmulatorActivity;->access$5(Lcom/androidemu/snes/EmulatorActivity;Lcom/androidemu/snes/EmulatorActivity$NetWaitDialog;)V

    .line 1151
    :cond_3
    const v0, 0x7f070027

    .line 1152
    .local v0, "error":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 1160
    :goto_1
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    .line 1161
    const/4 v3, 0x1

    .line 1160
    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1161
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1154
    :pswitch_0
    const v0, 0x7f070028

    .line 1155
    goto :goto_1

    .line 1157
    :pswitch_1
    const v0, 0x7f070029

    goto :goto_1

    .line 1165
    .end local v0    # "error":I
    :sswitch_2
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$3(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/Emulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/Emulator;->power()V

    .line 1166
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$0(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/snes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/snes/NetPlayService;->sendMessageReply()V

    goto/16 :goto_0

    .line 1170
    :sswitch_3
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$3(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/Emulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/Emulator;->reset()V

    .line 1171
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$0(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/snes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/snes/NetPlayService;->sendMessageReply()V

    goto/16 :goto_0

    .line 1175
    :sswitch_4
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$7(Lcom/androidemu/snes/EmulatorActivity;)Ljava/io/File;

    move-result-object v1

    .line 1177
    .local v1, "file":Ljava/io/File;
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v1, v2}, Lcom/androidemu/snes/EmulatorActivity;->access$8(Ljava/io/File;[B)V

    .line 1178
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$3(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/Emulator;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androidemu/Emulator;->loadState(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1183
    :goto_2
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$0(Lcom/androidemu/snes/EmulatorActivity;)Lcom/androidemu/snes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/snes/NetPlayService;->sendMessageReply()V

    goto/16 :goto_0

    .line 1179
    :catch_0
    move-exception v2

    .line 1181
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 1180
    :catchall_0
    move-exception v2

    .line 1181
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1182
    throw v2

    .line 1187
    .end local v1    # "file":Ljava/io/File;
    :sswitch_5
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-virtual {v2}, Lcom/androidemu/snes/EmulatorActivity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1188
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$2(Lcom/androidemu/snes/EmulatorActivity;)V

    .line 1189
    :cond_4
    iget-object v2, p0, Lcom/androidemu/snes/EmulatorActivity$1;->this$0:Lcom/androidemu/snes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/snes/EmulatorActivity;->access$9(Lcom/androidemu/snes/EmulatorActivity;)V

    goto/16 :goto_0

    .line 1129
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x3e8 -> :sswitch_5
    .end sparse-switch

    .line 1152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
