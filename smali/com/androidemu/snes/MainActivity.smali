.class public Lcom/androidemu/snes/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidemu/snes/MainActivity$MenuView;
    }
.end annotation


# static fields
.field public static Flag:Z

.field public static Name:Ljava/lang/String;

.field public static Path:Ljava/lang/String;

.field public static activity:Landroid/app/Activity;

.field public static handler:Landroid/os/Handler;

.field public static intent:Landroid/content/Intent;


# instance fields
.field Demo:Z

.field menuView:Lcom/androidemu/snes/MainActivity$MenuView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/androidemu/snes/MainActivity;->Flag:Z

    .line 58
    new-instance v0, Lcom/androidemu/snes/MainActivity$1;

    invoke-direct {v0}, Lcom/androidemu/snes/MainActivity$1;-><init>()V

    sput-object v0, Lcom/androidemu/snes/MainActivity;->handler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "Dir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "Dir":Ljava/io/File;
    const-string v1, "/mnt/extsd/VSFC/roms/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .restart local v0    # "Dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 76
    const-string v1, "/mnt/extsd/VSFC/"

    sput-object v1, Lcom/androidemu/snes/MainActivity;->Path:Ljava/lang/String;

    .line 86
    :goto_0
    sget-object v1, Lcom/androidemu/snes/MainActivity;->Path:Ljava/lang/String;

    return-object v1

    .line 80
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "Dir":Ljava/io/File;
    const-string v1, "/mnt/external_sd/VSFC/roms/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .restart local v0    # "Dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 82
    const-string v1, "/mnt/external_sd/VSFC/"

    sput-object v1, Lcom/androidemu/snes/MainActivity;->Path:Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_1
    const-string v1, "/mnt/sdcard/VSFC/"

    sput-object v1, Lcom/androidemu/snes/MainActivity;->Path:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x10000

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 93
    const/16 v4, 0x1006

    .line 92
    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 96
    const-string v3, "VSFC"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sput-object p0, Lcom/androidemu/snes/MainActivity;->activity:Landroid/app/Activity;

    .line 98
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/androidemu/snes/MainActivity;->Name:Ljava/lang/String;

    .line 101
    const-string v3, "VSFC"

    sget-object v4, Lcom/androidemu/snes/MainActivity;->Name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "filt"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/androidemu/snes/EmulatorActivity;->Filt:I

    .line 106
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/androidemu/snes/EmulatorActivity;->User:I

    .line 107
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "pack"

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/androidemu/snes/EmulatorActivity;->Pack:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "class"

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/androidemu/snes/EmulatorActivity;->Class:Ljava/lang/String;

    .line 110
    :cond_1
    sget-object v3, Lcom/androidemu/snes/MainActivity;->Name:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity;->getFilePath()Ljava/lang/String;

    .line 113
    sget-object v3, Lcom/androidemu/snes/MainActivity;->Name:Ljava/lang/String;

    const-string v4, "/mnt/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_2

    sget-object v3, Lcom/androidemu/snes/MainActivity;->Name:Ljava/lang/String;

    const-string v4, "/storage/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 115
    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/androidemu/snes/MainActivity;->Name:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "ROMFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 118
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/androidemu/snes/MainActivity;->Name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-class v6, Lcom/androidemu/snes/EmulatorActivity;

    invoke-direct {v3, v4, v5, p0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v3, Lcom/androidemu/snes/MainActivity;->intent:Landroid/content/Intent;

    .line 119
    sget-object v3, Lcom/androidemu/snes/MainActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    .end local v0    # "ROMFile":Ljava/io/File;
    :cond_3
    :goto_0
    sget-object v3, Lcom/androidemu/snes/MainActivity;->Name:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 148
    new-instance v3, Lcom/androidemu/snes/MainActivity$MenuView;

    invoke-direct {v3, p0, p0}, Lcom/androidemu/snes/MainActivity$MenuView;-><init>(Lcom/androidemu/snes/MainActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/androidemu/snes/MainActivity;->menuView:Lcom/androidemu/snes/MainActivity$MenuView;

    .line 149
    iget-object v3, p0, Lcom/androidemu/snes/MainActivity;->menuView:Lcom/androidemu/snes/MainActivity$MenuView;

    invoke-virtual {p0, v3}, Lcom/androidemu/snes/MainActivity;->setContentView(Landroid/view/View;)V

    .line 178
    :goto_1
    return-void

    .line 121
    .restart local v0    # "ROMFile":Ljava/io/File;
    :cond_4
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity;->finish()V

    goto :goto_0

    .line 124
    .end local v0    # "ROMFile":Ljava/io/File;
    :cond_5
    sget-object v3, Lcom/androidemu/snes/MainActivity;->Name:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_7

    .line 126
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/androidemu/snes/MainActivity;->Path:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/roms/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/androidemu/snes/MainActivity;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v0    # "ROMFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 129
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/androidemu/snes/MainActivity;->Path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/roms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/androidemu/snes/MainActivity;->Name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-class v6, Lcom/androidemu/snes/EmulatorActivity;

    invoke-direct {v3, v4, v5, p0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v3, Lcom/androidemu/snes/MainActivity;->intent:Landroid/content/Intent;

    .line 130
    sget-object v3, Lcom/androidemu/snes/MainActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 132
    :cond_6
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity;->finish()V

    goto :goto_0

    .line 136
    .end local v0    # "ROMFile":Ljava/io/File;
    :cond_7
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/androidemu/snes/MainActivity;->Path:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/roms/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/androidemu/snes/MainActivity;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".smc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v0    # "ROMFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 139
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/androidemu/snes/MainActivity;->Path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/roms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/androidemu/snes/MainActivity;->Name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".smc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-class v6, Lcom/androidemu/snes/EmulatorActivity;

    invoke-direct {v3, v4, v5, p0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v3, Lcom/androidemu/snes/MainActivity;->intent:Landroid/content/Intent;

    .line 140
    sget-object v3, Lcom/androidemu/snes/MainActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 142
    :cond_8
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity;->finish()V

    goto/16 :goto_0

    .line 153
    .end local v0    # "ROMFile":Ljava/io/File;
    :cond_9
    sget-object v3, Lcom/androidemu/snes/MainActivity;->intent:Landroid/content/Intent;
invoke-virtual {p0, v3}, Lcom/androidemu/snes/MainActivity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0, v7, v7}, Lcom/androidemu/snes/MainActivity;->overridePendingTransition(II)V


    goto/16 :goto_1

    .line 158
    :cond_b
    iput-boolean v7, p0, Lcom/androidemu/snes/MainActivity;->Demo:Z

    

    .line 166
    :cond_c
    sget-object v3, Lcom/androidemu/snes/MainActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/androidemu/snes/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    invoke-virtual {p0, v7, v7}, Lcom/androidemu/snes/MainActivity;->overridePendingTransition(II)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 204
    const-string v0, "VSFC"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 207
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 190
    const-string v0, "VSFC"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v0, Lcom/androidemu/snes/MainActivity;->Name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x1

    sput-boolean v0, Lcom/androidemu/snes/MainActivity;->Flag:Z

    .line 195
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 182
    const-string v0, "VSFC"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-boolean v0, Lcom/androidemu/snes/MainActivity;->Flag:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/androidemu/snes/MainActivity;->finish()V

    .line 186
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 199
    const-string v0, "VSFC"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method
