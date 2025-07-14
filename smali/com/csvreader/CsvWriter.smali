.class public Lcom/csvreader/CsvWriter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csvreader/CsvWriter$UserSettings;,
        Lcom/csvreader/CsvWriter$Letters;
    }
.end annotation


# static fields
.field public static final ESCAPE_MODE_BACKSLASH:I = 0x2

.field public static final ESCAPE_MODE_DOUBLED:I = 0x1


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private closed:Z

.field private fileName:Ljava/lang/String;

.field private firstColumn:Z

.field private initialized:Z

.field private outputStream:Ljava/io/Writer;

.field private systemRecordDelimiter:Ljava/lang/String;

.field private useCustomRecordDelimiter:Z

.field private userSettings:Lcom/csvreader/CsvWriter$UserSettings;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;CLjava/nio/charset/Charset;)V
    .locals 1

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0, p2}, Lcom/csvreader/CsvWriter;-><init>(Ljava/io/Writer;C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;C)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    iput-object v0, p0, Lcom/csvreader/CsvWriter;->fileName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/csvreader/CsvWriter;->firstColumn:Z

    iput-boolean v1, p0, Lcom/csvreader/CsvWriter;->useCustomRecordDelimiter:Z

    iput-object v0, p0, Lcom/csvreader/CsvWriter;->charset:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/csvreader/CsvWriter$UserSettings;

    invoke-direct {v0, p0}, Lcom/csvreader/CsvWriter$UserSettings;-><init>(Lcom/csvreader/CsvWriter;)V

    iput-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iput-boolean v1, p0, Lcom/csvreader/CsvWriter;->initialized:Z

    iput-boolean v1, p0, Lcom/csvreader/CsvWriter;->closed:Z

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csvreader/CsvWriter;->systemRecordDelimiter:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter outputStream can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iput-char p2, v0, Lcom/csvreader/CsvWriter$UserSettings;->Delimiter:C

    iput-boolean v2, p0, Lcom/csvreader/CsvWriter;->initialized:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2c

    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/csvreader/CsvWriter;-><init>(Ljava/lang/String;CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CLjava/nio/charset/Charset;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    iput-object v2, p0, Lcom/csvreader/CsvWriter;->fileName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csvreader/CsvWriter;->firstColumn:Z

    iput-boolean v1, p0, Lcom/csvreader/CsvWriter;->useCustomRecordDelimiter:Z

    iput-object v2, p0, Lcom/csvreader/CsvWriter;->charset:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/csvreader/CsvWriter$UserSettings;

    invoke-direct {v0, p0}, Lcom/csvreader/CsvWriter$UserSettings;-><init>(Lcom/csvreader/CsvWriter;)V

    iput-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iput-boolean v1, p0, Lcom/csvreader/CsvWriter;->initialized:Z

    iput-boolean v1, p0, Lcom/csvreader/CsvWriter;->closed:Z

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csvreader/CsvWriter;->systemRecordDelimiter:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter fileName can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter charset can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/csvreader/CsvWriter;->fileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iput-char p2, v0, Lcom/csvreader/CsvWriter$UserSettings;->Delimiter:C

    iput-object p3, p0, Lcom/csvreader/CsvWriter;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/csvreader/CsvWriter;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "This instance of the CsvWriter class has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkInit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/csvreader/CsvWriter;->initialized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/csvreader/CsvWriter;->fileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/csvreader/CsvWriter;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csvreader/CsvWriter;->initialized:Z

    :cond_1
    return-void
.end method

.method private close(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/csvreader/CsvWriter;->closed:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    iput-object v1, p0, Lcom/csvreader/CsvWriter;->charset:Ljava/nio/charset/Charset;

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/csvreader/CsvWriter;->initialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csvreader/CsvWriter;->closed:Z

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-eq v1, v4, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int v0, v1, v2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/csvreader/CsvWriter;->closed:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/csvreader/CsvWriter;->close(Z)V

    iput-boolean v1, p0, Lcom/csvreader/CsvWriter;->closed:Z

    :cond_0
    return-void
.end method

.method public endRecord()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/csvreader/CsvWriter;->checkClosed()V

    invoke-direct {p0}, Lcom/csvreader/CsvWriter;->checkInit()V

    iget-boolean v0, p0, Lcom/csvreader/CsvWriter;->useCustomRecordDelimiter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    iget-object v1, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v1, v1, Lcom/csvreader/CsvWriter$UserSettings;->RecordDelimiter:C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csvreader/CsvWriter;->firstColumn:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    iget-object v1, p0, Lcom/csvreader/CsvWriter;->systemRecordDelimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/csvreader/CsvWriter;->close(Z)V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public getComment()C
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v0, v0, Lcom/csvreader/CsvWriter$UserSettings;->Comment:C

    return v0
.end method

.method public getDelimiter()C
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v0, v0, Lcom/csvreader/CsvWriter$UserSettings;->Delimiter:C

    return v0
.end method

.method public getEscapeMode()I
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget v0, v0, Lcom/csvreader/CsvWriter$UserSettings;->EscapeMode:I

    return v0
.end method

.method public getForceQualifier()Z
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-boolean v0, v0, Lcom/csvreader/CsvWriter$UserSettings;->ForceQualifier:Z

    return v0
.end method

.method public getRecordDelimiter()C
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v0, v0, Lcom/csvreader/CsvWriter$UserSettings;->RecordDelimiter:C

    return v0
.end method

.method public getTextQualifier()C
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v0, v0, Lcom/csvreader/CsvWriter$UserSettings;->TextQualifier:C

    return v0
.end method

.method public getUseTextQualifier()Z
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-boolean v0, v0, Lcom/csvreader/CsvWriter$UserSettings;->UseTextQualifier:Z

    return v0
.end method

.method public setComment(C)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iput-char p1, v0, Lcom/csvreader/CsvWriter$UserSettings;->Comment:C

    return-void
.end method

.method public setDelimiter(C)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iput-char p1, v0, Lcom/csvreader/CsvWriter$UserSettings;->Delimiter:C

    return-void
.end method

.method public setEscapeMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iput p1, v0, Lcom/csvreader/CsvWriter$UserSettings;->EscapeMode:I

    return-void
.end method

.method public setForceQualifier(Z)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iput-boolean p1, v0, Lcom/csvreader/CsvWriter$UserSettings;->ForceQualifier:Z

    return-void
.end method

.method public setRecordDelimiter(C)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csvreader/CsvWriter;->useCustomRecordDelimiter:Z

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iput-char p1, v0, Lcom/csvreader/CsvWriter$UserSettings;->RecordDelimiter:C

    return-void
.end method

.method public setTextQualifier(C)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iput-char p1, v0, Lcom/csvreader/CsvWriter$UserSettings;->TextQualifier:C

    return-void
.end method

.method public setUseTextQualifier(Z)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iput-boolean p1, v0, Lcom/csvreader/CsvWriter$UserSettings;->UseTextQualifier:Z

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/csvreader/CsvWriter;->write(Ljava/lang/String;Z)V

    return-void
.end method

.method public write(Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x9

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/csvreader/CsvWriter;->checkClosed()V

    invoke-direct {p0}, Lcom/csvreader/CsvWriter;->checkInit()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-boolean v0, p0, Lcom/csvreader/CsvWriter;->firstColumn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    iget-object v2, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v2, v2, Lcom/csvreader/CsvWriter$UserSettings;->Delimiter:C

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    :cond_1
    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-boolean v0, v0, Lcom/csvreader/CsvWriter$UserSettings;->ForceQualifier:Z

    if-nez p2, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    :goto_0
    if-nez v0, :cond_6

    iget-object v3, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-boolean v3, v3, Lcom/csvreader/CsvWriter$UserSettings;->UseTextQualifier:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v3, v3, Lcom/csvreader/CsvWriter$UserSettings;->TextQualifier:C

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gt v3, v4, :cond_5

    iget-object v3, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v3, v3, Lcom/csvreader/CsvWriter$UserSettings;->Delimiter:C

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gt v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/csvreader/CsvWriter;->useCustomRecordDelimiter:Z

    if-nez v3, :cond_2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gt v3, v4, :cond_5

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gt v3, v4, :cond_5

    :cond_2
    iget-boolean v3, p0, Lcom/csvreader/CsvWriter;->useCustomRecordDelimiter:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v3, v3, Lcom/csvreader/CsvWriter$UserSettings;->RecordDelimiter:C

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gt v3, v4, :cond_5

    :cond_3
    iget-boolean v3, p0, Lcom/csvreader/CsvWriter;->firstColumn:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v4, v4, Lcom/csvreader/CsvWriter$UserSettings;->Comment:C

    if-eq v3, v4, :cond_5

    :cond_4
    iget-boolean v3, p0, Lcom/csvreader/CsvWriter;->firstColumn:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    iget-object v3, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-boolean v3, v3, Lcom/csvreader/CsvWriter$UserSettings;->UseTextQualifier:Z

    if-eqz v3, :cond_11

    if-nez v0, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    if-eqz p2, :cond_11

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_7

    if-ne v3, v7, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    if-nez v0, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_9

    if-ne v3, v7, :cond_11

    :cond_9
    move v3, v1

    :goto_1
    if-eqz v3, :cond_d

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    iget-object v1, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v1, v1, Lcom/csvreader/CsvWriter$UserSettings;->TextQualifier:C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget v0, v0, Lcom/csvreader/CsvWriter$UserSettings;->EscapeMode:I

    if-ne v0, v5, :cond_c

    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-static {v2, v0, v1}, Lcom/csvreader/CsvWriter;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v2, v2, Lcom/csvreader/CsvWriter$UserSettings;->TextQualifier:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v4, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v4, v4, Lcom/csvreader/CsvWriter$UserSettings;->TextQualifier:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/csvreader/CsvWriter;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v3, :cond_b

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    iget-object v1, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v1, v1, Lcom/csvreader/CsvWriter$UserSettings;->TextQualifier:C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_b
    iput-boolean v6, p0, Lcom/csvreader/CsvWriter;->firstColumn:Z

    return-void

    :cond_c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v1, v1, Lcom/csvreader/CsvWriter$UserSettings;->TextQualifier:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v4, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v4, v4, Lcom/csvreader/CsvWriter$UserSettings;->TextQualifier:C

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v4, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v4, v4, Lcom/csvreader/CsvWriter$UserSettings;->TextQualifier:C

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/csvreader/CsvWriter;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget v0, v0, Lcom/csvreader/CsvWriter$UserSettings;->EscapeMode:I

    if-ne v0, v5, :cond_10

    const-string v0, "\\"

    const-string v4, "\\\\"

    invoke-static {v2, v0, v4}, Lcom/csvreader/CsvWriter;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v4, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v4, v4, Lcom/csvreader/CsvWriter$UserSettings;->Delimiter:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v5, v5, Lcom/csvreader/CsvWriter$UserSettings;->Delimiter:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/csvreader/CsvWriter;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/csvreader/CsvWriter;->useCustomRecordDelimiter:Z

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v4, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v4, v4, Lcom/csvreader/CsvWriter$UserSettings;->RecordDelimiter:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v5, v5, Lcom/csvreader/CsvWriter$UserSettings;->RecordDelimiter:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/csvreader/CsvWriter;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-boolean v2, p0, Lcom/csvreader/CsvWriter;->firstColumn:Z

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v4, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v4, v4, Lcom/csvreader/CsvWriter$UserSettings;->Comment:C

    if-ne v2, v4, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_f

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v4, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v4, v4, Lcom/csvreader/CsvWriter$UserSettings;->Comment:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_e
    const-string v2, "\r"

    const-string v4, "\\\r"

    invoke-static {v0, v2, v4}, Lcom/csvreader/CsvWriter;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    const-string v4, "\\\n"

    invoke-static {v0, v2, v4}, Lcom/csvreader/CsvWriter;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v1, v1, Lcom/csvreader/CsvWriter$UserSettings;->Comment:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_10
    move-object v0, v2

    goto/16 :goto_2

    :cond_11
    move v3, v0

    goto/16 :goto_1

    :cond_12
    move-object v2, p1

    goto/16 :goto_0
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/csvreader/CsvWriter;->checkClosed()V

    invoke-direct {p0}, Lcom/csvreader/CsvWriter;->checkInit()V

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    iget-object v1, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v1, v1, Lcom/csvreader/CsvWriter$UserSettings;->Comment:C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/csvreader/CsvWriter;->useCustomRecordDelimiter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    iget-object v1, p0, Lcom/csvreader/CsvWriter;->userSettings:Lcom/csvreader/CsvWriter$UserSettings;

    iget-char v1, v1, Lcom/csvreader/CsvWriter$UserSettings;->RecordDelimiter:C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csvreader/CsvWriter;->firstColumn:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/csvreader/CsvWriter;->outputStream:Ljava/io/Writer;

    iget-object v1, p0, Lcom/csvreader/CsvWriter;->systemRecordDelimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRecord([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/csvreader/CsvWriter;->writeRecord([Ljava/lang/String;Z)V

    return-void
.end method

.method public writeRecord([Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lcom/csvreader/CsvWriter;->write(Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/csvreader/CsvWriter;->endRecord()V

    :cond_1
    return-void
.end method
