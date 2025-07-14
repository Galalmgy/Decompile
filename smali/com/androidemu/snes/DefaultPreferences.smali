.class public Lcom/androidemu/snes/DefaultPreferences;
.super Ljava/lang/Object;
.source "DefaultPreferences.java"


# static fields
.field public static USB1PID:I

.field public static USB1PInput:I

.field public static USB2PID:I

.field public static USB2PInput:I

.field public static final keymaps:[I

.field public static final padmaps:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 12
    const/16 v1, 0x33

    aput v1, v0, v3

    const/16 v1, 0x2f

    aput v1, v0, v4

    const/16 v1, 0x1d

    aput v1, v0, v5

    const/16 v1, 0x20

    aput v1, v0, v6

    .line 14
    const/16 v1, 0x1f

    aput v1, v0, v7

    const/16 v1, 0x9

    const/16 v2, 0x42

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 15
    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x29

    aput v2, v0, v1

    .line 11
    sput-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 18
    const/16 v1, 0x13

    aput v1, v0, v3

    const/16 v1, 0x14

    aput v1, v0, v4

    const/16 v1, 0x15

    aput v1, v0, v5

    const/16 v1, 0x16

    aput v1, v0, v6

    .line 20
    const/16 v1, 0x25

    aput v1, v0, v7

    const/16 v1, 0x9

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 21
    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x24

    aput v2, v0, v1

    .line 17
    sput-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetUSB1PInput()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 31
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v3

    .line 32
    .local v3, "ids":[I
    sput v6, Lcom/androidemu/snes/DefaultPreferences;->USB1PID:I

    .line 33
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-lt v2, v5, :cond_0

    .line 54
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 35
    :cond_0
    aget v5, v3, v2

    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 36
    .local v4, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "Name":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v0

    .line 40
    .local v0, "ID":I
    const/high16 v5, 0x10000

    if-ge v0, v5, :cond_2

    .line 42
    const-string v5, "USB Joystick"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_1

    .line 44
    sput v0, Lcom/androidemu/snes/DefaultPreferences;->USB1PID:I

    .line 45
    const/4 v5, 0x1

    goto :goto_1

    .line 47
    :cond_1
    const-string v5, "SHANWAN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_2

    .line 49
    sput v0, Lcom/androidemu/snes/DefaultPreferences;->USB1PID:I

    .line 50
    const/4 v5, 0x2

    goto :goto_1

    .line 33
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static GetUSB2PInput()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 60
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v3

    .line 61
    .local v3, "ids":[I
    sput v6, Lcom/androidemu/snes/DefaultPreferences;->USB2PID:I

    .line 62
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-lt v2, v5, :cond_0

    .line 83
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 64
    :cond_0
    aget v5, v3, v2

    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 65
    .local v4, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "Name":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v0

    .line 69
    .local v0, "ID":I
    const/high16 v5, 0x10000

    if-lt v0, v5, :cond_2

    .line 71
    const-string v5, "USB Joystick"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_1

    .line 73
    sput v0, Lcom/androidemu/snes/DefaultPreferences;->USB2PID:I

    .line 74
    const/4 v5, 0x1

    goto :goto_1

    .line 76
    :cond_1
    const-string v5, "SHANWAN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_2

    .line 78
    sput v0, Lcom/androidemu/snes/DefaultPreferences;->USB2PID:I

    .line 79
    const/4 v5, 0x2

    goto :goto_1

    .line 62
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getKeyMappings(Landroid/content/Context;)[I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 86
    invoke-static {}, Lcom/androidemu/snes/DefaultPreferences;->GetUSB1PInput()I

    move-result v0

    sput v0, Lcom/androidemu/snes/DefaultPreferences;->USB1PInput:I

    .line 108
    sget v0, Lcom/androidemu/snes/DefaultPreferences;->USB1PInput:I

    if-ne v0, v3, :cond_0

    .line 110
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0x113

    aput v1, v0, v5

    .line 111
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0x114

    aput v1, v0, v3

    .line 112
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0x115

    aput v1, v0, v4

    .line 113
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0x116

    aput v1, v0, v6

    .line 115
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0x1c4

    aput v1, v0, v7

    .line 116
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0x9

    const/16 v2, 0x1c5

    aput v2, v0, v1

    .line 118
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0xa

    const/16 v2, 0x1bd

    aput v2, v0, v1

    .line 119
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0xb

    const/16 v2, 0x1be

    aput v2, v0, v1

    .line 121
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0xc

    const/16 v2, 0x1bc

    aput v2, v0, v1

    .line 122
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0xd

    const/16 v2, 0x1bf

    aput v2, v0, v1

    .line 124
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0xe

    const/16 v2, 0x1c0

    aput v2, v0, v1

    .line 125
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0xf

    const/16 v2, 0x1c1

    aput v2, v0, v1

    .line 127
    :cond_0
    sget v0, Lcom/androidemu/snes/DefaultPreferences;->USB1PInput:I

    if-ne v0, v4, :cond_1

    .line 129
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0x113

    aput v1, v0, v5

    .line 130
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0x114

    aput v1, v0, v3

    .line 131
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0x115

    aput v1, v0, v4

    .line 132
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0x116

    aput v1, v0, v6

    .line 134
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0x16d

    aput v1, v0, v7

    .line 135
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0x9

    const/16 v2, 0x16c

    aput v2, v0, v1

    .line 137
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0xa

    const/16 v2, 0x161

    aput v2, v0, v1

    .line 138
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0xb

    const/16 v2, 0x160

    aput v2, v0, v1

    .line 140
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0xc

    const/16 v2, 0x164

    aput v2, v0, v1

    .line 141
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0xd

    const/16 v2, 0x163

    aput v2, v0, v1

    .line 143
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0xe

    const/16 v2, 0x167

    aput v2, v0, v1

    .line 144
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    const/16 v1, 0xf

    const/16 v2, 0x169

    aput v2, v0, v1

    .line 146
    :cond_1
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->keymaps:[I

    return-object v0
.end method

.method public static getPadMappings(Landroid/content/Context;)[I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 149
    invoke-static {}, Lcom/androidemu/snes/DefaultPreferences;->GetUSB2PInput()I

    move-result v0

    sput v0, Lcom/androidemu/snes/DefaultPreferences;->USB2PInput:I

    .line 171
    sget v0, Lcom/androidemu/snes/DefaultPreferences;->USB2PInput:I

    if-ne v0, v3, :cond_0

    .line 173
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0x13

    aput v1, v0, v5

    .line 174
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0x14

    aput v1, v0, v3

    .line 175
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0x15

    aput v1, v0, v4

    .line 176
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0x16

    aput v1, v0, v6

    .line 178
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0xc4

    aput v1, v0, v7

    .line 179
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0x9

    const/16 v2, 0xc5

    aput v2, v0, v1

    .line 181
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0xa

    const/16 v2, 0xbd

    aput v2, v0, v1

    .line 182
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0xb

    const/16 v2, 0xbe

    aput v2, v0, v1

    .line 184
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0xc

    const/16 v2, 0xbc

    aput v2, v0, v1

    .line 185
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0xd

    const/16 v2, 0xbf

    aput v2, v0, v1

    .line 187
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0xe

    const/16 v2, 0xc0

    aput v2, v0, v1

    .line 188
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0xf

    const/16 v2, 0xc1

    aput v2, v0, v1

    .line 190
    :cond_0
    sget v0, Lcom/androidemu/snes/DefaultPreferences;->USB2PInput:I

    if-ne v0, v4, :cond_1

    .line 192
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0x13

    aput v1, v0, v5

    .line 193
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0x14

    aput v1, v0, v3

    .line 194
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0x15

    aput v1, v0, v4

    .line 195
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0x16

    aput v1, v0, v6

    .line 197
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0x6d

    aput v1, v0, v7

    .line 198
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0x9

    const/16 v2, 0x6c

    aput v2, v0, v1

    .line 200
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput v2, v0, v1

    .line 201
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0xb

    const/16 v2, 0x60

    aput v2, v0, v1

    .line 203
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0xc

    const/16 v2, 0x64

    aput v2, v0, v1

    .line 204
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0xd

    const/16 v2, 0x63

    aput v2, v0, v1

    .line 206
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0xe

    const/16 v2, 0x67

    aput v2, v0, v1

    .line 207
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    const/16 v1, 0xf

    const/16 v2, 0x69

    aput v2, v0, v1

    .line 209
    :cond_1
    sget-object v0, Lcom/androidemu/snes/DefaultPreferences;->padmaps:[I

    return-object v0
.end method
