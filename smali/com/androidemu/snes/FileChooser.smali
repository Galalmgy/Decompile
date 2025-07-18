.class public Lcom/androidemu/snes/FileChooser;
.super Landroid/app/ListActivity;
.source "FileChooser.java"

# interfaces
.implements Ljava/io/FileFilter;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final EXTRA_FILTERS:Ljava/lang/String; = "filters"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final LOG_TAG:Ljava/lang/String; = "FileChooser"


# instance fields
.field private currentDir:Ljava/io/File;

.field private filters:[Ljava/lang/String;

.field private pathEdit:Landroid/widget/EditText;

.field private final sdcardDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 29
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidemu/snes/FileChooser;->sdcardDir:Ljava/io/File;

    .line 22
    return-void
.end method

.method private changeTo(Ljava/io/File;)V
    .locals 8
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 177
    iget-object v4, p0, Lcom/androidemu/snes/FileChooser;->filters:[Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 178
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 179
    new-array v1, v5, [Ljava/io/File;

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/androidemu/snes/FileChooser;->currentDir:Ljava/io/File;

    .line 182
    iget-object v4, p0, Lcom/androidemu/snes/FileChooser;->pathEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v6, v1

    move v4, v5

    :goto_1
    if-lt v4, v6, :cond_2

    .line 192
    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 194
    const v5, 0x1090003

    invoke-direct {v4, p0, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 193
    invoke-virtual {p0, v4}, Lcom/androidemu/snes/FileChooser;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    return-void

    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object v4, p0

    .line 177
    goto :goto_0

    .line 185
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v2    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    aget-object v0, v1, v4

    .line 186
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private getDirectoryFromFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :cond_0
    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "name":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v2

    .line 155
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 156
    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v5, p0, Lcom/androidemu/snes/FileChooser;->filters:[Ljava/lang/String;

    array-length v6, v5

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 160
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v3

    .line 161
    goto :goto_0

    .line 159
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected getFileFilter()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/androidemu/snes/FileChooser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "filters"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInitialPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/androidemu/snes/FileChooser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 107
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 108
    const/4 v1, 0x0

    .line 109
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v1, p0, Lcom/androidemu/snes/FileChooser;->sdcardDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/androidemu/snes/FileChooser;->changeTo(Ljava/io/File;)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v1, p0, Lcom/androidemu/snes/FileChooser;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 141
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0, v0}, Lcom/androidemu/snes/FileChooser;->changeTo(Ljava/io/File;)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x7f090007
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v3, 0x7f030004

    invoke-virtual {p0, v3}, Lcom/androidemu/snes/FileChooser;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/androidemu/snes/FileChooser;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/high16 v4, 0x7f090000

    invoke-virtual {p0, v4}, Lcom/androidemu/snes/FileChooser;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 41
    const v3, 0x7f090009

    invoke-virtual {p0, v3}, Lcom/androidemu/snes/FileChooser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/androidemu/snes/FileChooser;->pathEdit:Landroid/widget/EditText;

    .line 42
    iget-object v3, p0, Lcom/androidemu/snes/FileChooser;->pathEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 43
    const v3, 0x7f090007

    invoke-virtual {p0, v3}, Lcom/androidemu/snes/FileChooser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v3, 0x7f090008

    invoke-virtual {p0, v3}, Lcom/androidemu/snes/FileChooser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/androidemu/snes/FileChooser;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "title":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p0, v2}, Lcom/androidemu/snes/FileChooser;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/androidemu/snes/FileChooser;->getFileFilter()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androidemu/snes/FileChooser;->filters:[Ljava/lang/String;

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "path":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 53
    const-string v3, "currentDir"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    :goto_0
    const/4 v0, 0x0

    .line 58
    .local v0, "dir":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 59
    invoke-direct {p0, v1}, Lcom/androidemu/snes/FileChooser;->getDirectoryFromFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 60
    :cond_1
    if-nez v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/androidemu/snes/FileChooser;->sdcardDir:Ljava/io/File;

    .line 62
    :cond_2
    invoke-direct {p0, v0}, Lcom/androidemu/snes/FileChooser;->changeTo(Ljava/io/File;)V

    .line 63
    return-void

    .line 55
    .end local v0    # "dir":Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Lcom/androidemu/snes/FileChooser;->getInitialPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 69
    invoke-virtual {p0}, Lcom/androidemu/snes/FileChooser;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method protected onFileSelected(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 113
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/snes/FileChooser;->setResult(ILandroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/androidemu/snes/FileChooser;->finish()V

    .line 115
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 118
    const/16 v3, 0x42

    if-ne p2, v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/androidemu/snes/FileChooser;->pathEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    invoke-direct {p0, v0}, Lcom/androidemu/snes/FileChooser;->changeTo(Ljava/io/File;)V

    .line 128
    :goto_0
    const/4 v2, 0x1

    .line 131
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return v2

    .line 125
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    const v3, 0x7f070007

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 93
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/androidemu/snes/FileChooser;->currentDir:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-direct {p0, v0}, Lcom/androidemu/snes/FileChooser;->changeTo(Ljava/io/File;)V

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/androidemu/snes/FileChooser;->onFileSelected(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 75
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/androidemu/snes/FileChooser;->currentDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/androidemu/snes/FileChooser;->changeTo(Ljava/io/File;)V

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x7f090024
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/androidemu/snes/FileChooser;->currentDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "currentDir"

    iget-object v1, p0, Lcom/androidemu/snes/FileChooser;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method
