.class public Lcom/androidemu/snes/EmulatorSettings;
.super Landroid/preference/PreferenceActivity;
.source "EmulatorSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ABOUT_URI:Landroid/net/Uri;

.field private static final GAME_GRIPPER_URI:Ljava/lang/String; = "https://sites.google.com/site/gamegripper"

.field private static final MARKET_URI:Ljava/lang/String; = "market://details?id="

.field private static final REQUEST_LOAD_KEY_PROFILE:I = 0x1

.field private static final REQUEST_SAVE_KEY_PROFILE:I = 0x2

.field private static final SEARCH_ROM_URI:Ljava/lang/String; = "http://www.romfind.com/snes-roms.html?sid=YONG"

.field public static final gameKeys:[I

.field private static final gameKeysName:[I

.field public static final gameKeysPref:[Ljava/lang/String;

.field public static final gameKeysPref2:[Ljava/lang/String;


# instance fields
.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x10

    .line 28
    const-string v1, "file:///android_asset/about.html"

    .line 27
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/androidemu/snes/EmulatorSettings;->ABOUT_URI:Landroid/net/Uri;

    .line 36
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    .line 55
    new-array v1, v4, [Ljava/lang/String;

    .line 56
    const-string v2, "gamepad_up"

    aput-object v2, v1, v5

    .line 57
    const-string v2, "gamepad_down"

    aput-object v2, v1, v6

    .line 58
    const-string v2, "gamepad_left"

    aput-object v2, v1, v7

    .line 59
    const-string v2, "gamepad_right"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    .line 60
    const-string v3, "gamepad_up_left"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 61
    const-string v3, "gamepad_up_right"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 62
    const-string v3, "gamepad_down_left"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 63
    const-string v3, "gamepad_down_right"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 64
    const-string v3, "gamepad_select"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 65
    const-string v3, "gamepad_start"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 66
    const-string v3, "gamepad_A"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 67
    const-string v3, "gamepad_B"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 68
    const-string v3, "gamepad_X"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 69
    const-string v3, "gamepad_Y"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 70
    const-string v3, "gamepad_TL"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    .line 71
    const-string v3, "gamepad_TR"

    aput-object v3, v1, v2

    .line 55
    sput-object v1, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    .line 74
    new-array v1, v4, [Ljava/lang/String;

    .line 75
    const-string v2, "gamepad2_up"

    aput-object v2, v1, v5

    .line 76
    const-string v2, "gamepad2_down"

    aput-object v2, v1, v6

    .line 77
    const-string v2, "gamepad2_left"

    aput-object v2, v1, v7

    .line 78
    const-string v2, "gamepad2_right"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    .line 79
    const-string v3, "gamepad2_up_left"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 80
    const-string v3, "gamepad2_up_right"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 81
    const-string v3, "gamepad2_down_left"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 82
    const-string v3, "gamepad2_down_right"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 83
    const-string v3, "gamepad2_select"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 84
    const-string v3, "gamepad2_start"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 85
    const-string v3, "gamepad2_A"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 86
    const-string v3, "gamepad2_B"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 87
    const-string v3, "gamepad2_X"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 88
    const-string v3, "gamepad2_Y"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 89
    const-string v3, "gamepad2_TL"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    .line 90
    const-string v3, "gamepad2_TR"

    aput-object v3, v1, v2

    .line 74
    sput-object v1, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    .line 93
    new-array v1, v4, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/androidemu/snes/EmulatorSettings;->gameKeysName:[I

    .line 113
    sget-object v1, Lcom/androidemu/snes/EmulatorSettings;->gameKeys:[I

    array-length v0, v1

    .line 114
    .local v0, "n":I
    sget-object v1, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v0, :cond_0

    .line 115
    sget-object v1, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v0, :cond_0

    .line 116
    sget-object v1, Lcom/androidemu/snes/EmulatorSettings;->gameKeysName:[I

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Key configurations are not consistent"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 118
    :cond_1
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x800
        0x400
        0x200
        0x100
        0xa00
        0x900
        0x600
        0x500
        0x2000
        0x1000
        0x80
        0x8000
        0x40
        0x4000
        0x20
        0x10
    .end array-data

    .line 93
    :array_1
    .array-data 4
        0x7f07009c
        0x7f07009d
        0x7f07009e
        0x7f07009f
        0x7f0700a0
        0x7f0700a1
        0x7f0700a2
        0x7f0700a3
        0x7f0700a4
        0x7f0700a5
        0x7f0700a6
        0x7f0700a7
        0x7f0700a8
        0x7f0700a9
        0x7f0700aa
        0x7f0700ab
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static getAllKeyPrefs()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    sget-object v1, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    const-string v1, "gamepad_superscope_turbo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v1, "gamepad_superscope_pause"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v1, "gamepad_superscope_cursor"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-object v0
.end method

.method private getKeyMappings()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 141
    .local v1, "mappings":Ljava/util/TreeMap;
    invoke-static {}, Lcom/androidemu/snes/EmulatorSettings;->getAllKeyPrefs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 145
    return-object v1

    .line 141
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/androidemu/snes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/androidemu/snes/KeyPreference;

    .line 143
    .local v2, "pref":Lcom/androidemu/snes/KeyPreference;
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/androidemu/snes/KeyPreference;->getKeyValue()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getSearchROMIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.romfind.com/snes-roms.html?sid=YONG"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 121
    return-object v0
.end method

.method private setKeyMappings(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/androidemu/snes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/androidemu/snes/EmulatorSettings;->getAllKeyPrefs()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    return-void

    .line 151
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 153
    .local v3, "value":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 154
    invoke-virtual {p0, v1}, Lcom/androidemu/snes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/androidemu/snes/KeyPreference;

    .line 155
    .local v2, "pref":Lcom/androidemu/snes/KeyPreference;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/androidemu/snes/KeyPreference;->setKey(I)V

    .line 156
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 228
    packed-switch p1, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 230
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 232
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/androidemu/snes/KeyProfilesActivity;->loadProfile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 231
    invoke-direct {p0, v0}, Lcom/androidemu/snes/EmulatorSettings;->setKeyMappings(Ljava/util/Map;)V

    goto :goto_0

    .line 237
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 238
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-direct {p0}, Lcom/androidemu/snes/EmulatorSettings;->getKeyMappings()Ljava/util/Map;

    move-result-object v1

    .line 238
    invoke-static {p0, v0, v1}, Lcom/androidemu/snes/KeyProfilesActivity;->saveProfile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const v4, 0x7f070016

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->setTitle(I)V

    .line 167
    const/high16 v4, 0x7f040000

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->addPreferencesFromResource(I)V

    .line 169
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/androidemu/snes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    .line 171
    invoke-static {p0}, Lcom/androidemu/snes/DefaultPreferences;->getKeyMappings(Landroid/content/Context;)[I

    move-result-object v0

    .line 174
    .local v0, "defaultKeys":[I
    const-string v4, "gamepad1"

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 175
    .local v1, "group":Landroid/preference/PreferenceGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 183
    const-string v4, "gamepad2"

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "group":Landroid/preference/PreferenceGroup;
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 184
    .restart local v1    # "group":Landroid/preference/PreferenceGroup;
    const/4 v2, 0x0

    :goto_1
    sget-object v4, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_2

    .line 191
    const-string v4, "superScope"

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "group":Landroid/preference/PreferenceGroup;
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 192
    .restart local v1    # "group":Landroid/preference/PreferenceGroup;
    new-instance v3, Lcom/androidemu/snes/KeyPreference;

    invoke-direct {v3, p0}, Lcom/androidemu/snes/KeyPreference;-><init>(Landroid/content/Context;)V

    .line 193
    .local v3, "pref":Lcom/androidemu/snes/KeyPreference;
    const-string v4, "gamepad_superscope_turbo"

    invoke-virtual {v3, v4}, Lcom/androidemu/snes/KeyPreference;->setKey(Ljava/lang/String;)V

    .line 194
    const v4, 0x7f0700ac

    invoke-virtual {v3, v4}, Lcom/androidemu/snes/KeyPreference;->setTitle(I)V

    .line 195
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 197
    new-instance v3, Lcom/androidemu/snes/KeyPreference;

    .end local v3    # "pref":Lcom/androidemu/snes/KeyPreference;
    invoke-direct {v3, p0}, Lcom/androidemu/snes/KeyPreference;-><init>(Landroid/content/Context;)V

    .line 198
    .restart local v3    # "pref":Lcom/androidemu/snes/KeyPreference;
    const-string v4, "gamepad_superscope_pause"

    invoke-virtual {v3, v4}, Lcom/androidemu/snes/KeyPreference;->setKey(Ljava/lang/String;)V

    .line 199
    const v4, 0x7f0700ad

    invoke-virtual {v3, v4}, Lcom/androidemu/snes/KeyPreference;->setTitle(I)V

    .line 200
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 202
    new-instance v3, Lcom/androidemu/snes/KeyPreference;

    .end local v3    # "pref":Lcom/androidemu/snes/KeyPreference;
    invoke-direct {v3, p0}, Lcom/androidemu/snes/KeyPreference;-><init>(Landroid/content/Context;)V

    .line 203
    .restart local v3    # "pref":Lcom/androidemu/snes/KeyPreference;
    const-string v4, "gamepad_superscope_cursor"

    invoke-virtual {v3, v4}, Lcom/androidemu/snes/KeyPreference;->setKey(Ljava/lang/String;)V

    .line 204
    const v4, 0x7f0700ae

    invoke-virtual {v3, v4}, Lcom/androidemu/snes/KeyPreference;->setTitle(I)V

    .line 205
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    invoke-static {p0}, Lcom/androidemu/snes/wrapper/Wrapper;->supportsMultitouch(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 208
    const-string v4, "enableVKeypad"

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 209
    const v5, 0x7f070069

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 212
    :cond_0
    const-string v4, "apuEnabled"

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    const-string v4, "enableLightGun"

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    const-string v4, "useCCore"

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    const-string v4, "about"

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    .line 217
    const-class v6, Lcom/androidemu/snes/HelpActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v6, Lcom/androidemu/snes/EmulatorSettings;->ABOUT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 216
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 218
    const-string v4, "upgrade"

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    .line 219
    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "market://details?id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/androidemu/snes/EmulatorSettings;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 218
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 220
    const-string v4, "searchRoms"

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-static {}, Lcom/androidemu/snes/EmulatorSettings;->getSearchROMIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 222
    const-string v4, "gameGripper"

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    .line 223
    const-string v6, "android.intent.action.VIEW"

    const-string v7, "https://sites.google.com/site/gamegripper"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 222
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 224
    return-void

    .line 176
    .end local v3    # "pref":Lcom/androidemu/snes/KeyPreference;
    :cond_1
    new-instance v3, Lcom/androidemu/snes/KeyPreference;

    invoke-direct {v3, p0}, Lcom/androidemu/snes/KeyPreference;-><init>(Landroid/content/Context;)V

    .line 177
    .restart local v3    # "pref":Lcom/androidemu/snes/KeyPreference;
    sget-object v4, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/androidemu/snes/KeyPreference;->setKey(Ljava/lang/String;)V

    .line 178
    sget-object v4, Lcom/androidemu/snes/EmulatorSettings;->gameKeysName:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/androidemu/snes/KeyPreference;->setTitle(I)V

    .line 179
    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/androidemu/snes/KeyPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 185
    .end local v3    # "pref":Lcom/androidemu/snes/KeyPreference;
    :cond_2
    new-instance v3, Lcom/androidemu/snes/KeyPreference;

    invoke-direct {v3, p0}, Lcom/androidemu/snes/KeyPreference;-><init>(Landroid/content/Context;)V

    .line 186
    .restart local v3    # "pref":Lcom/androidemu/snes/KeyPreference;
    sget-object v4, Lcom/androidemu/snes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/androidemu/snes/KeyPreference;->setKey(Ljava/lang/String;)V

    .line 187
    sget-object v4, Lcom/androidemu/snes/EmulatorSettings;->gameKeysName:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/androidemu/snes/KeyPreference;->setTitle(I)V

    .line 188
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 268
    const v0, 0x7f070045

    .line 269
    const/4 v1, 0x0

    .line 268
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 248
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "key":Ljava/lang/String;
    const-string v3, "loadKeyProfile"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/androidemu/snes/KeyProfilesActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "title"

    .line 253
    const v4, 0x7f070036

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v0, v2}, Lcom/androidemu/snes/EmulatorSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 264
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 257
    :cond_0
    const-string v3, "saveKeyProfile"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/androidemu/snes/KeyProfilesActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "title"

    .line 260
    const v4, 0x7f070037

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/EmulatorSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/androidemu/snes/EmulatorSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 264
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method
