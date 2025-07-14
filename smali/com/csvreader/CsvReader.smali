.class public Lcom/csvreader/CsvReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csvreader/CsvReader$StaticSettings;,
        Lcom/csvreader/CsvReader$HeadersHolder;,
        Lcom/csvreader/CsvReader$UserSettings;,
        Lcom/csvreader/CsvReader$Letters;,
        Lcom/csvreader/CsvReader$RawRecordBuffer;,
        Lcom/csvreader/CsvReader$ColumnBuffer;,
        Lcom/csvreader/CsvReader$DataBuffer;,
        Lcom/csvreader/CsvReader$ComplexEscape;
    }
.end annotation


# static fields
.field public static final ESCAPE_MODE_BACKSLASH:I = 0x2

.field public static final ESCAPE_MODE_DOUBLED:I = 0x1


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private closed:Z

.field private columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

.field private columnsCount:I

.field private currentRecord:J

.field private dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

.field private fileName:Ljava/lang/String;

.field private hasMoreData:Z

.field private hasReadNextLine:Z

.field private headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

.field private initialized:Z

.field private inputStream:Ljava/io/Reader;

.field private isQualified:[Z

.field private lastLetter:C

.field private rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

.field private rawRecord:Ljava/lang/String;

.field private startedColumn:Z

.field private startedWithQualifier:Z

.field private useCustomRecordDelimiter:Z

.field private userSettings:Lcom/csvreader/CsvReader$UserSettings;

.field private values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;CLjava/nio/charset/Charset;)V
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0, p2}, Lcom/csvreader/CsvReader;-><init>(Ljava/io/Reader;C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lcom/csvreader/CsvReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/csvreader/CsvReader;-><init>(Ljava/io/Reader;C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;C)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/csvreader/CsvReader;->inputStream:Ljava/io/Reader;

    iput-object v1, p0, Lcom/csvreader/CsvReader;->fileName:Ljava/lang/String;

    new-instance v0, Lcom/csvreader/CsvReader$UserSettings;

    invoke-direct {v0, p0}, Lcom/csvreader/CsvReader$UserSettings;-><init>(Lcom/csvreader/CsvReader;)V

    iput-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput-object v1, p0, Lcom/csvreader/CsvReader;->charset:Ljava/nio/charset/Charset;

    iput-boolean v2, p0, Lcom/csvreader/CsvReader;->useCustomRecordDelimiter:Z

    new-instance v0, Lcom/csvreader/CsvReader$DataBuffer;

    invoke-direct {v0, p0}, Lcom/csvreader/CsvReader$DataBuffer;-><init>(Lcom/csvreader/CsvReader;)V

    iput-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    new-instance v0, Lcom/csvreader/CsvReader$ColumnBuffer;

    invoke-direct {v0, p0}, Lcom/csvreader/CsvReader$ColumnBuffer;-><init>(Lcom/csvreader/CsvReader;)V

    iput-object v0, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    new-instance v0, Lcom/csvreader/CsvReader$RawRecordBuffer;

    invoke-direct {v0, p0}, Lcom/csvreader/CsvReader$RawRecordBuffer;-><init>(Lcom/csvreader/CsvReader;)V

    iput-object v0, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iput-object v1, p0, Lcom/csvreader/CsvReader;->isQualified:[Z

    const-string v0, ""

    iput-object v0, p0, Lcom/csvreader/CsvReader;->rawRecord:Ljava/lang/String;

    new-instance v0, Lcom/csvreader/CsvReader$HeadersHolder;

    invoke-direct {v0, p0}, Lcom/csvreader/CsvReader$HeadersHolder;-><init>(Lcom/csvreader/CsvReader;)V

    iput-object v0, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iput-boolean v2, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    iput-boolean v2, p0, Lcom/csvreader/CsvReader;->startedWithQualifier:Z

    iput-boolean v3, p0, Lcom/csvreader/CsvReader;->hasMoreData:Z

    iput-char v2, p0, Lcom/csvreader/CsvReader;->lastLetter:C

    iput-boolean v2, p0, Lcom/csvreader/CsvReader;->hasReadNextLine:Z

    iput v2, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/csvreader/CsvReader;->currentRecord:J

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/csvreader/CsvReader;->values:[Ljava/lang/String;

    iput-boolean v2, p0, Lcom/csvreader/CsvReader;->initialized:Z

    iput-boolean v2, p0, Lcom/csvreader/CsvReader;->closed:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter inputStream can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/csvreader/CsvReader;->inputStream:Ljava/io/Reader;

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput-char p2, v0, Lcom/csvreader/CsvReader$UserSettings;->Delimiter:C

    iput-boolean v3, p0, Lcom/csvreader/CsvReader;->initialized:Z

    iget-object v0, p0, Lcom/csvreader/CsvReader;->values:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/csvreader/CsvReader;->isQualified:[Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/csvreader/CsvReader;-><init>(Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/csvreader/CsvReader;-><init>(Ljava/lang/String;CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CLjava/nio/charset/Charset;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/csvreader/CsvReader;->inputStream:Ljava/io/Reader;

    iput-object v1, p0, Lcom/csvreader/CsvReader;->fileName:Ljava/lang/String;

    new-instance v0, Lcom/csvreader/CsvReader$UserSettings;

    invoke-direct {v0, p0}, Lcom/csvreader/CsvReader$UserSettings;-><init>(Lcom/csvreader/CsvReader;)V

    iput-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput-object v1, p0, Lcom/csvreader/CsvReader;->charset:Ljava/nio/charset/Charset;

    iput-boolean v2, p0, Lcom/csvreader/CsvReader;->useCustomRecordDelimiter:Z

    new-instance v0, Lcom/csvreader/CsvReader$DataBuffer;

    invoke-direct {v0, p0}, Lcom/csvreader/CsvReader$DataBuffer;-><init>(Lcom/csvreader/CsvReader;)V

    iput-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    new-instance v0, Lcom/csvreader/CsvReader$ColumnBuffer;

    invoke-direct {v0, p0}, Lcom/csvreader/CsvReader$ColumnBuffer;-><init>(Lcom/csvreader/CsvReader;)V

    iput-object v0, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    new-instance v0, Lcom/csvreader/CsvReader$RawRecordBuffer;

    invoke-direct {v0, p0}, Lcom/csvreader/CsvReader$RawRecordBuffer;-><init>(Lcom/csvreader/CsvReader;)V

    iput-object v0, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iput-object v1, p0, Lcom/csvreader/CsvReader;->isQualified:[Z

    const-string v0, ""

    iput-object v0, p0, Lcom/csvreader/CsvReader;->rawRecord:Ljava/lang/String;

    new-instance v0, Lcom/csvreader/CsvReader$HeadersHolder;

    invoke-direct {v0, p0}, Lcom/csvreader/CsvReader$HeadersHolder;-><init>(Lcom/csvreader/CsvReader;)V

    iput-object v0, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iput-boolean v2, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    iput-boolean v2, p0, Lcom/csvreader/CsvReader;->startedWithQualifier:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csvreader/CsvReader;->hasMoreData:Z

    iput-char v2, p0, Lcom/csvreader/CsvReader;->lastLetter:C

    iput-boolean v2, p0, Lcom/csvreader/CsvReader;->hasReadNextLine:Z

    iput v2, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/csvreader/CsvReader;->currentRecord:J

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/csvreader/CsvReader;->values:[Ljava/lang/String;

    iput-boolean v2, p0, Lcom/csvreader/CsvReader;->initialized:Z

    iput-boolean v2, p0, Lcom/csvreader/CsvReader;->closed:Z

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
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/csvreader/CsvReader;->fileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput-char p2, v0, Lcom/csvreader/CsvReader$UserSettings;->Delimiter:C

    iput-object p3, p0, Lcom/csvreader/CsvReader;->charset:Ljava/nio/charset/Charset;

    iget-object v0, p0, Lcom/csvreader/CsvReader;->values:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/csvreader/CsvReader;->isQualified:[Z

    return-void
.end method

.method private appendLetter(C)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget v0, v0, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    iget-object v1, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget-object v1, v1, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget-object v0, v0, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget-object v1, v1, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    iget-object v2, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget v2, v2, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iput-object v0, v1, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    :cond_0
    iget-object v0, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget-object v0, v0, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    iget-object v1, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget v2, v1, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    aput-char p1, v0, v2

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/csvreader/CsvReader;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "This instance of the CsvReader class has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkDataLength()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/csvreader/CsvReader;->initialized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/csvreader/CsvReader;->fileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/csvreader/CsvReader;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/csvreader/CsvReader;->inputStream:Ljava/io/Reader;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csvreader/CsvReader;->charset:Ljava/nio/charset/Charset;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csvreader/CsvReader;->initialized:Z

    :cond_1
    invoke-direct {p0}, Lcom/csvreader/CsvReader;->updateCurrentValue()V

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v0, v0, Lcom/csvreader/CsvReader$UserSettings;->CaptureRawRecord:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v0, v0, Lcom/csvreader/CsvReader$DataBuffer;->Count:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iget-object v0, v0, Lcom/csvreader/CsvReader$RawRecordBuffer;->Buffer:[C

    array-length v0, v0

    iget-object v1, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$RawRecordBuffer;->Position:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Count:I

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iget-object v0, v0, Lcom/csvreader/CsvReader$RawRecordBuffer;->Buffer:[C

    array-length v0, v0

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Count:I

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iget-object v2, v2, Lcom/csvreader/CsvReader$RawRecordBuffer;->Buffer:[C

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iget-object v1, v1, Lcom/csvreader/CsvReader$RawRecordBuffer;->Buffer:[C

    iget-object v2, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iget v2, v2, Lcom/csvreader/CsvReader$RawRecordBuffer;->Position:I

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iput-object v0, v1, Lcom/csvreader/CsvReader$RawRecordBuffer;->Buffer:[C

    :cond_2
    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v0, v0, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    iget-object v2, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iget-object v2, v2, Lcom/csvreader/CsvReader$RawRecordBuffer;->Buffer:[C

    iget-object v3, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iget v3, v3, Lcom/csvreader/CsvReader$RawRecordBuffer;->Position:I

    iget-object v4, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v4, v4, Lcom/csvreader/CsvReader$DataBuffer;->Count:I

    iget-object v5, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v5, v5, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iget v1, v0, Lcom/csvreader/CsvReader$RawRecordBuffer;->Position:I

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->Count:I

    iget-object v3, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v3, v3, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/csvreader/CsvReader$RawRecordBuffer;->Position:I

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v1, p0, Lcom/csvreader/CsvReader;->inputStream:Ljava/io/Reader;

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v4, v4, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    iput v1, v0, Lcom/csvreader/CsvReader$DataBuffer;->Count:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v0, v0, Lcom/csvreader/CsvReader$DataBuffer;->Count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iput-boolean v6, p0, Lcom/csvreader/CsvReader;->hasMoreData:Z

    :cond_4
    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iput v6, v0, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iput v6, v0, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iput v6, v0, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/csvreader/CsvReader;->close()V

    throw v0
.end method

.method private close(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/csvreader/CsvReader;->closed:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    iput-object v1, p0, Lcom/csvreader/CsvReader;->charset:Ljava/nio/charset/Charset;

    iget-object v0, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iput-object v1, v0, Lcom/csvreader/CsvReader$HeadersHolder;->Headers:[Ljava/lang/String;

    iget-object v0, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iput-object v1, v0, Lcom/csvreader/CsvReader$HeadersHolder;->IndexByName:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iput-object v1, v0, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    iget-object v0, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iput-object v1, v0, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    iget-object v0, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iput-object v1, v0, Lcom/csvreader/CsvReader$RawRecordBuffer;->Buffer:[C

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/csvreader/CsvReader;->initialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->inputStream:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/csvreader/CsvReader;->inputStream:Ljava/io/Reader;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csvreader/CsvReader;->closed:Z

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private endColumn()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x20

    const/4 v5, 0x0

    const-string v0, ""

    iget-boolean v1, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v0, v0, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v1, v1, Lcom/csvreader/CsvReader$UserSettings;->TrimWhitespace:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/csvreader/CsvReader;->startedWithQualifier:Z

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    aget-char v1, v1, v0

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    aget-char v1, v1, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    iget-object v3, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v3, v3, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    iget-object v4, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v4, v4, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iput v5, v1, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    iput-boolean v5, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    iget v1, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    const v2, 0x186a0

    if-lt v1, v2, :cond_6

    iget-object v1, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v1, v1, Lcom/csvreader/CsvReader$UserSettings;->SafetySwitch:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/csvreader/CsvReader;->close()V

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Maximum column count of 100,000 exceeded in record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-wide v3, p0, Lcom/csvreader/CsvReader;->currentRecord:J

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ". Set the SafetySwitch property to false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " if you\'re expecting more than 100,000 columns per record to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " avoid this error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0}, Lcom/csvreader/CsvReader;->updateCurrentValue()V

    iget-object v0, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget v0, v0, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v1, v1, Lcom/csvreader/CsvReader$UserSettings;->TrimWhitespace:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/csvreader/CsvReader;->startedWithQualifier:Z

    if-nez v1, :cond_5

    :goto_2
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget-object v1, v1, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    aget-char v1, v1, v0

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget-object v1, v1, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    aget-char v1, v1, v0

    if-ne v1, v3, :cond_5

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget-object v2, v2, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, v5, v0}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    iget-object v2, p0, Lcom/csvreader/CsvReader;->values:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/csvreader/CsvReader;->values:[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/csvreader/CsvReader;->values:[Ljava/lang/String;

    iget-object v4, p0, Lcom/csvreader/CsvReader;->values:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/csvreader/CsvReader;->values:[Ljava/lang/String;

    new-array v1, v1, [Z

    iget-object v2, p0, Lcom/csvreader/CsvReader;->isQualified:[Z

    iget-object v3, p0, Lcom/csvreader/CsvReader;->isQualified:[Z

    array-length v3, v3

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/csvreader/CsvReader;->isQualified:[Z

    :cond_7
    iget-object v1, p0, Lcom/csvreader/CsvReader;->values:[Ljava/lang/String;

    iget v2, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/csvreader/CsvReader;->isQualified:[Z

    iget v1, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    iget-boolean v2, p0, Lcom/csvreader/CsvReader;->startedWithQualifier:Z

    aput-boolean v2, v0, v1

    const-string v0, ""

    iget v0, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    return-void
.end method

.method private endRecord()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csvreader/CsvReader;->hasReadNextLine:Z

    iget-wide v0, p0, Lcom/csvreader/CsvReader;->currentRecord:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/csvreader/CsvReader;->currentRecord:J

    return-void
.end method

.method private static hexToDec(C)C
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-char v0, v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-char v0, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p0, -0x30

    int-to-char v0, v0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lcom/csvreader/CsvReader;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter data can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/csvreader/CsvReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/csvreader/CsvReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method private updateCurrentValue()V
    .locals 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v0, v0, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget-object v0, v0, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    array-length v0, v0

    iget-object v1, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget-object v0, v0, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    array-length v0, v0

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget-object v2, v2, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget-object v1, v1, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    iget-object v2, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget v2, v2, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iput-object v0, v1, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    :cond_0
    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v0, v0, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    iget-object v2, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget-object v2, v2, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    iget-object v3, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget v3, v3, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    iget-object v4, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v4, v4, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v5, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v5, v5, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget v1, v0, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v3, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v3, v3, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    :cond_1
    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/csvreader/CsvReader;->closed:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/csvreader/CsvReader;->close(Z)V

    iput-boolean v1, p0, Lcom/csvreader/CsvReader;->closed:Z

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/csvreader/CsvReader;->close(Z)V

    return-void
.end method

.method public get(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->checkClosed()V

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/csvreader/CsvReader;->values:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->checkClosed()V

    invoke-virtual {p0, p1}, Lcom/csvreader/CsvReader;->getIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/csvreader/CsvReader;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureRawRecord()Z
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v0, v0, Lcom/csvreader/CsvReader$UserSettings;->CaptureRawRecord:Z

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    iget v0, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    return v0
.end method

.method public getComment()C
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v0, v0, Lcom/csvreader/CsvReader$UserSettings;->Comment:C

    return v0
.end method

.method public getCurrentRecord()J
    .locals 4

    iget-wide v0, p0, Lcom/csvreader/CsvReader;->currentRecord:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getDelimiter()C
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v0, v0, Lcom/csvreader/CsvReader$UserSettings;->Delimiter:C

    return v0
.end method

.method public getEscapeMode()I
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget v0, v0, Lcom/csvreader/CsvReader$UserSettings;->EscapeMode:I

    return v0
.end method

.method public getHeader(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->checkClosed()V

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget v0, v0, Lcom/csvreader/CsvReader$HeadersHolder;->Length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget-object v0, v0, Lcom/csvreader/CsvReader$HeadersHolder;->Headers:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeaderCount()I
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget v0, v0, Lcom/csvreader/CsvReader$HeadersHolder;->Length:I

    return v0
.end method

.method public getHeaders()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->checkClosed()V

    iget-object v0, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget-object v0, v0, Lcom/csvreader/CsvReader$HeadersHolder;->Headers:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget v0, v0, Lcom/csvreader/CsvReader$HeadersHolder;->Length:I

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget-object v1, v1, Lcom/csvreader/CsvReader$HeadersHolder;->Headers:[Ljava/lang/String;

    iget-object v2, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget v2, v2, Lcom/csvreader/CsvReader$HeadersHolder;->Length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->checkClosed()V

    iget-object v0, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget-object v0, v0, Lcom/csvreader/CsvReader$HeadersHolder;->IndexByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRawRecord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->rawRecord:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordDelimiter()C
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v0, v0, Lcom/csvreader/CsvReader$UserSettings;->RecordDelimiter:C

    return v0
.end method

.method public getSafetySwitch()Z
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v0, v0, Lcom/csvreader/CsvReader$UserSettings;->SafetySwitch:Z

    return v0
.end method

.method public getSkipEmptyRecords()Z
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v0, v0, Lcom/csvreader/CsvReader$UserSettings;->SkipEmptyRecords:Z

    return v0
.end method

.method public getTextQualifier()C
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v0, v0, Lcom/csvreader/CsvReader$UserSettings;->TextQualifier:C

    return v0
.end method

.method public getTrimWhitespace()Z
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v0, v0, Lcom/csvreader/CsvReader$UserSettings;->TrimWhitespace:Z

    return v0
.end method

.method public getUseComments()Z
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v0, v0, Lcom/csvreader/CsvReader$UserSettings;->UseComments:Z

    return v0
.end method

.method public getUseTextQualifier()Z
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v0, v0, Lcom/csvreader/CsvReader$UserSettings;->UseTextQualifier:Z

    return v0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->checkClosed()V

    iget v0, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/csvreader/CsvReader;->values:[Ljava/lang/String;

    iget v2, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public isQualified(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->checkClosed()V

    iget v0, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/csvreader/CsvReader;->isQualified:[Z

    aget-boolean v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readHeaders()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/csvreader/CsvReader;->readRecord()Z

    move-result v2

    iget-object v0, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget v3, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    iput v3, v0, Lcom/csvreader/CsvReader$HeadersHolder;->Length:I

    iget-object v0, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget v3, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v0, Lcom/csvreader/CsvReader$HeadersHolder;->Headers:[Ljava/lang/String;

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget v3, v3, Lcom/csvreader/CsvReader$HeadersHolder;->Length:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/csvreader/CsvReader;->get(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget-object v4, v4, Lcom/csvreader/CsvReader$HeadersHolder;->Headers:[Ljava/lang/String;

    aput-object v3, v4, v0

    iget-object v4, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget-object v4, v4, Lcom/csvreader/CsvReader$HeadersHolder;->IndexByName:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget-wide v3, p0, Lcom/csvreader/CsvReader;->currentRecord:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/csvreader/CsvReader;->currentRecord:J

    :cond_1
    iput v1, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    return v2
.end method

.method public readRecord()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->checkClosed()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    iget-object v0, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    const/4 v1, 0x0

    iput v1, v0, Lcom/csvreader/CsvReader$RawRecordBuffer;->Position:I

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iput v1, v0, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csvreader/CsvReader;->hasReadNextLine:Z

    iget-boolean v0, p0, Lcom/csvreader/CsvReader;->hasMoreData:Z

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v0, v0, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Count:I

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->checkDataLength()V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/csvreader/CsvReader;->hasMoreData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/csvreader/CsvReader;->hasReadNextLine:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    if-nez v0, :cond_3

    iget-char v0, p0, Lcom/csvreader/CsvReader;->lastLetter:C

    iget-object v1, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v1, v1, Lcom/csvreader/CsvReader$UserSettings;->Delimiter:C

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endColumn()V

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endRecord()V

    :cond_4
    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v0, v0, Lcom/csvreader/CsvReader$UserSettings;->CaptureRawRecord:Z

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/csvreader/CsvReader;->hasMoreData:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iget v0, v0, Lcom/csvreader/CsvReader$RawRecordBuffer;->Position:I

    if-nez v0, :cond_34

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    iget-object v3, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v3, v3, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v4, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v4, v4, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/csvreader/CsvReader;->rawRecord:Ljava/lang/String;

    :goto_1
    iget-boolean v0, p0, Lcom/csvreader/CsvReader;->hasReadNextLine:Z

    return v0

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csvreader/CsvReader;->startedWithQualifier:Z

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v0, v0, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    aget-char v0, v0, v1

    iget-object v1, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v1, v1, Lcom/csvreader/CsvReader$UserSettings;->UseTextQualifier:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v1, v1, Lcom/csvreader/CsvReader$UserSettings;->TextQualifier:C

    if-ne v0, v1, :cond_1c

    iput-char v0, p0, Lcom/csvreader/CsvReader;->lastLetter:C

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csvreader/CsvReader;->startedWithQualifier:Z

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v0, v0, Lcom/csvreader/CsvReader$UserSettings;->TextQualifier:C

    iget-object v1, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget v1, v1, Lcom/csvreader/CsvReader$UserSettings;->EscapeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    const/16 v0, 0x5c

    :cond_6
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v9, v8, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    :cond_7
    iget-object v8, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v8, v8, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v9, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v9, v9, Lcom/csvreader/CsvReader$DataBuffer;->Count:I

    if-ne v8, v9, :cond_a

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->checkDataLength()V

    :cond_8
    iget-boolean v8, p0, Lcom/csvreader/CsvReader;->hasMoreData:Z

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    if-nez v8, :cond_7

    :cond_9
    :goto_2
    iget-boolean v0, p0, Lcom/csvreader/CsvReader;->hasMoreData:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v0, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    goto/16 :goto_0

    :cond_a
    iget-object v8, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v8, v8, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    iget-object v9, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v9, v9, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    aget-char v8, v8, v9

    if-eqz v6, :cond_f

    iget-object v9, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v10, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v10, v10, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    iget-object v9, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v9, v9, Lcom/csvreader/CsvReader$UserSettings;->Delimiter:C

    if-ne v8, v9, :cond_c

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endColumn()V

    :cond_b
    :goto_3
    iput-char v8, p0, Lcom/csvreader/CsvReader;->lastLetter:C

    iget-boolean v8, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v9, v8, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v8, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v8, v8, Lcom/csvreader/CsvReader$UserSettings;->SafetySwitch:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v8, v8, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v9, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v9, v9, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget v9, v9, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    add-int/2addr v8, v9

    const v9, 0x186a0

    if-le v8, v9, :cond_8

    invoke-virtual {p0}, Lcom/csvreader/CsvReader;->close()V

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Maximum column length of 100,000 exceeded in column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget v3, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " in record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-wide v3, p0, Lcom/csvreader/CsvReader;->currentRecord:J

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ". Set the SafetySwitch property to false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " if you\'re expecting column lengths greater than 100,000 characters to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " avoid this error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-boolean v9, p0, Lcom/csvreader/CsvReader;->useCustomRecordDelimiter:Z

    if-nez v9, :cond_d

    const/16 v9, 0xd

    if-eq v8, v9, :cond_e

    const/16 v9, 0xa

    if-eq v8, v9, :cond_e

    :cond_d
    iget-boolean v9, p0, Lcom/csvreader/CsvReader;->useCustomRecordDelimiter:Z

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v9, v9, Lcom/csvreader/CsvReader$UserSettings;->RecordDelimiter:C

    if-ne v8, v9, :cond_b

    :cond_e
    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endColumn()V

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endRecord()V

    goto/16 :goto_3

    :cond_f
    if-eqz v4, :cond_12

    add-int/lit8 v2, v2, 0x1

    packed-switch v3, :pswitch_data_0

    :cond_10
    :goto_4
    if-nez v4, :cond_11

    invoke-direct {p0, v1}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    goto/16 :goto_3

    :pswitch_0
    mul-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-static {v8}, Lcom/csvreader/CsvReader;->hexToDec(C)C

    move-result v9

    add-int/2addr v1, v9

    int-to-char v1, v1

    const/4 v9, 0x4

    if-ne v2, v9, :cond_10

    const/4 v4, 0x0

    goto :goto_4

    :pswitch_1
    mul-int/lit8 v1, v1, 0x8

    int-to-char v1, v1

    add-int/lit8 v9, v8, -0x30

    int-to-char v9, v9

    add-int/2addr v1, v9

    int-to-char v1, v1

    const/4 v9, 0x3

    if-ne v2, v9, :cond_10

    const/4 v4, 0x0

    goto :goto_4

    :pswitch_2
    mul-int/lit8 v1, v1, 0xa

    int-to-char v1, v1

    add-int/lit8 v9, v8, -0x30

    int-to-char v9, v9

    add-int/2addr v1, v9

    int-to-char v1, v1

    const/4 v9, 0x3

    if-ne v2, v9, :cond_10

    const/4 v4, 0x0

    goto :goto_4

    :pswitch_3
    mul-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-static {v8}, Lcom/csvreader/CsvReader;->hexToDec(C)C

    move-result v9

    add-int/2addr v1, v9

    int-to-char v1, v1

    const/4 v9, 0x2

    if-ne v2, v9, :cond_10

    const/4 v4, 0x0

    goto :goto_4

    :cond_11
    iget-object v9, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v10, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v10, v10, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    goto/16 :goto_3

    :cond_12
    iget-object v9, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v9, v9, Lcom/csvreader/CsvReader$UserSettings;->TextQualifier:C

    if-ne v8, v9, :cond_15

    if-eqz v5, :cond_13

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_13
    invoke-direct {p0}, Lcom/csvreader/CsvReader;->updateCurrentValue()V

    iget-object v7, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget v7, v7, Lcom/csvreader/CsvReader$UserSettings;->EscapeMode:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_14

    const/4 v5, 0x1

    :cond_14
    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_15
    iget-object v9, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget v9, v9, Lcom/csvreader/CsvReader$UserSettings;->EscapeMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_16

    if-eqz v5, :cond_16

    sparse-switch v8, :sswitch_data_0

    :goto_5
    const/4 v5, 0x0

    goto/16 :goto_3

    :sswitch_0
    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    goto :goto_5

    :sswitch_1
    const/16 v5, 0xd

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    goto :goto_5

    :sswitch_2
    const/16 v5, 0x9

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    goto :goto_5

    :sswitch_3
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    goto :goto_5

    :sswitch_4
    const/16 v5, 0xc

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    goto :goto_5

    :sswitch_5
    const/16 v5, 0x1b

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    goto :goto_5

    :sswitch_6
    const/16 v5, 0xb

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    goto :goto_5

    :sswitch_7
    const/4 v5, 0x7

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    goto :goto_5

    :sswitch_8
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x1

    add-int/lit8 v1, v8, -0x30

    int-to-char v1, v1

    iget-object v5, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v9, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v9, v9, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v5, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    goto :goto_5

    :sswitch_9
    sparse-switch v8, :sswitch_data_1

    :goto_6
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v9, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v9, v9, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v5, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    goto :goto_5

    :sswitch_a
    const/4 v3, 0x1

    goto :goto_6

    :sswitch_b
    const/4 v3, 0x4

    goto :goto_6

    :sswitch_c
    const/4 v3, 0x2

    goto :goto_6

    :sswitch_d
    const/4 v3, 0x3

    goto :goto_6

    :cond_16
    if-ne v8, v0, :cond_17

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->updateCurrentValue()V

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_17
    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v7, v7, Lcom/csvreader/CsvReader$UserSettings;->Delimiter:C

    if-ne v8, v7, :cond_18

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endColumn()V

    :goto_7
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_18
    iget-boolean v7, p0, Lcom/csvreader/CsvReader;->useCustomRecordDelimiter:Z

    if-nez v7, :cond_19

    const/16 v7, 0xd

    if-eq v8, v7, :cond_1a

    const/16 v7, 0xa

    if-eq v8, v7, :cond_1a

    :cond_19
    iget-boolean v7, p0, Lcom/csvreader/CsvReader;->useCustomRecordDelimiter:Z

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v7, v7, Lcom/csvreader/CsvReader$UserSettings;->RecordDelimiter:C

    if-ne v8, v7, :cond_1b

    :cond_1a
    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endColumn()V

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endRecord()V

    goto :goto_7

    :cond_1b
    iget-object v6, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v7, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v7, v7, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    const/4 v6, 0x1

    goto :goto_7

    :cond_1c
    iget-object v1, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v1, v1, Lcom/csvreader/CsvReader$UserSettings;->Delimiter:C

    if-ne v0, v1, :cond_1d

    iput-char v0, p0, Lcom/csvreader/CsvReader;->lastLetter:C

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endColumn()V

    goto/16 :goto_2

    :cond_1d
    iget-boolean v1, p0, Lcom/csvreader/CsvReader;->useCustomRecordDelimiter:Z

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v1, v1, Lcom/csvreader/CsvReader$UserSettings;->RecordDelimiter:C

    if-ne v0, v1, :cond_20

    iget-boolean v1, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    if-gtz v1, :cond_1e

    iget-object v1, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v1, v1, Lcom/csvreader/CsvReader$UserSettings;->SkipEmptyRecords:Z

    if-nez v1, :cond_1f

    :cond_1e
    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endColumn()V

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endRecord()V

    :goto_8
    iput-char v0, p0, Lcom/csvreader/CsvReader;->lastLetter:C

    goto/16 :goto_2

    :cond_1f
    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    goto :goto_8

    :cond_20
    iget-boolean v1, p0, Lcom/csvreader/CsvReader;->useCustomRecordDelimiter:Z

    if-nez v1, :cond_24

    const/16 v1, 0xd

    if-eq v0, v1, :cond_21

    const/16 v1, 0xa

    if-ne v0, v1, :cond_24

    :cond_21
    iget-boolean v1, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    if-nez v1, :cond_22

    iget v1, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    if-gtz v1, :cond_22

    iget-object v1, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v1, v1, Lcom/csvreader/CsvReader$UserSettings;->SkipEmptyRecords:Z

    if-nez v1, :cond_23

    const/16 v1, 0xd

    if-eq v0, v1, :cond_22

    iget-char v1, p0, Lcom/csvreader/CsvReader;->lastLetter:C

    const/16 v2, 0xd

    if-eq v1, v2, :cond_23

    :cond_22
    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endColumn()V

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endRecord()V

    :goto_9
    iput-char v0, p0, Lcom/csvreader/CsvReader;->lastLetter:C

    goto/16 :goto_2

    :cond_23
    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    goto :goto_9

    :cond_24
    iget-object v1, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v1, v1, Lcom/csvreader/CsvReader$UserSettings;->UseComments:Z

    if-eqz v1, :cond_25

    iget v1, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v1, v1, Lcom/csvreader/CsvReader$UserSettings;->Comment:C

    if-ne v0, v1, :cond_25

    iput-char v0, p0, Lcom/csvreader/CsvReader;->lastLetter:C

    invoke-virtual {p0}, Lcom/csvreader/CsvReader;->skipLine()Z

    goto/16 :goto_2

    :cond_25
    iget-object v1, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v1, v1, Lcom/csvreader/CsvReader$UserSettings;->TrimWhitespace:Z

    if-eqz v1, :cond_27

    const/16 v1, 0x20

    if-eq v0, v1, :cond_26

    const/16 v1, 0x9

    if-ne v0, v1, :cond_27

    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v1, v1, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    goto/16 :goto_2

    :cond_27
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    iget-object v1, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iput v2, v1, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    :goto_a
    if-nez v6, :cond_28

    iget-object v7, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v7, v7, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v8, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v8, v8, Lcom/csvreader/CsvReader$DataBuffer;->Count:I

    if-ne v7, v8, :cond_28

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->checkDataLength()V

    move v11, v6

    move v6, v0

    move v0, v11

    :goto_b
    iget-boolean v7, p0, Lcom/csvreader/CsvReader;->hasMoreData:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    if-eqz v7, :cond_9

    move v11, v0

    move v0, v6

    move v6, v11

    goto :goto_a

    :cond_28
    if-nez v6, :cond_29

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v0, v0, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    iget-object v6, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v6, v6, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    aget-char v0, v0, v6

    :cond_29
    iget-object v6, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v6, v6, Lcom/csvreader/CsvReader$UserSettings;->UseTextQualifier:Z

    if-nez v6, :cond_2c

    iget-object v6, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget v6, v6, Lcom/csvreader/CsvReader$UserSettings;->EscapeMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2c

    const/16 v6, 0x5c

    if-ne v0, v6, :cond_2c

    if-eqz v5, :cond_2b

    const/4 v5, 0x0

    :cond_2a
    :goto_c
    iput-char v0, p0, Lcom/csvreader/CsvReader;->lastLetter:C

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/csvreader/CsvReader;->startedColumn:Z

    if-eqz v7, :cond_37

    iget-object v7, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v8, v7, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v7, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-boolean v7, v7, Lcom/csvreader/CsvReader$UserSettings;->SafetySwitch:Z

    if-eqz v7, :cond_37

    iget-object v7, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v7, v7, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v8, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v8, v8, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iget v8, v8, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    add-int/2addr v7, v8

    const v8, 0x186a0

    if-le v7, v8, :cond_37

    invoke-virtual {p0}, Lcom/csvreader/CsvReader;->close()V

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Maximum column length of 100,000 exceeded in column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget v3, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " in record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-wide v3, p0, Lcom/csvreader/CsvReader;->currentRecord:J

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ". Set the SafetySwitch property to false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " if you\'re expecting column lengths greater than 100,000 characters to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " avoid this error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-direct {p0}, Lcom/csvreader/CsvReader;->updateCurrentValue()V

    const/4 v5, 0x1

    goto :goto_c

    :cond_2c
    if-eqz v4, :cond_2f

    add-int/lit8 v3, v3, 0x1

    packed-switch v1, :pswitch_data_1

    :cond_2d
    :goto_d
    if-nez v4, :cond_2e

    invoke-direct {p0, v2}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    goto/16 :goto_c

    :pswitch_4
    mul-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    invoke-static {v0}, Lcom/csvreader/CsvReader;->hexToDec(C)C

    move-result v6

    add-int/2addr v2, v6

    int-to-char v2, v2

    const/4 v6, 0x4

    if-ne v3, v6, :cond_2d

    const/4 v4, 0x0

    goto :goto_d

    :pswitch_5
    mul-int/lit8 v2, v2, 0x8

    int-to-char v2, v2

    add-int/lit8 v6, v0, -0x30

    int-to-char v6, v6

    add-int/2addr v2, v6

    int-to-char v2, v2

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2d

    const/4 v4, 0x0

    goto :goto_d

    :pswitch_6
    mul-int/lit8 v2, v2, 0xa

    int-to-char v2, v2

    add-int/lit8 v6, v0, -0x30

    int-to-char v6, v6

    add-int/2addr v2, v6

    int-to-char v2, v2

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2d

    const/4 v4, 0x0

    goto :goto_d

    :pswitch_7
    mul-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    invoke-static {v0}, Lcom/csvreader/CsvReader;->hexToDec(C)C

    move-result v6

    add-int/2addr v2, v6

    int-to-char v2, v2

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2d

    const/4 v4, 0x0

    goto :goto_d

    :cond_2e
    iget-object v6, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v7, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v7, v7, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    goto/16 :goto_c

    :cond_2f
    iget-object v6, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget v6, v6, Lcom/csvreader/CsvReader$UserSettings;->EscapeMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_30

    if-eqz v5, :cond_30

    sparse-switch v0, :sswitch_data_2

    move v11, v2

    move v2, v3

    move v3, v1

    move v1, v11

    :goto_e
    const/4 v5, 0x0

    move v11, v1

    move v1, v3

    move v3, v2

    move v2, v11

    goto/16 :goto_c

    :sswitch_e
    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    move v11, v2

    move v2, v3

    move v3, v1

    move v1, v11

    goto :goto_e

    :sswitch_f
    const/16 v5, 0xd

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    move v11, v2

    move v2, v3

    move v3, v1

    move v1, v11

    goto :goto_e

    :sswitch_10
    const/16 v5, 0x9

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    move v11, v2

    move v2, v3

    move v3, v1

    move v1, v11

    goto :goto_e

    :sswitch_11
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    move v11, v2

    move v2, v3

    move v3, v1

    move v1, v11

    goto :goto_e

    :sswitch_12
    const/16 v5, 0xc

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    move v11, v2

    move v2, v3

    move v3, v1

    move v1, v11

    goto :goto_e

    :sswitch_13
    const/16 v5, 0x1b

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    move v11, v2

    move v2, v3

    move v3, v1

    move v1, v11

    goto :goto_e

    :sswitch_14
    const/16 v5, 0xb

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    move v11, v2

    move v2, v3

    move v3, v1

    move v1, v11

    goto :goto_e

    :sswitch_15
    const/4 v5, 0x7

    invoke-direct {p0, v5}, Lcom/csvreader/CsvReader;->appendLetter(C)V

    move v11, v2

    move v2, v3

    move v3, v1

    move v1, v11

    goto :goto_e

    :sswitch_16
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x1

    add-int/lit8 v1, v0, -0x30

    int-to-char v1, v1

    iget-object v5, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v6, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v6, v6, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    goto :goto_e

    :sswitch_17
    sparse-switch v0, :sswitch_data_3

    :goto_f
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v6, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v6, v6, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    move v11, v2

    move v2, v3

    move v3, v1

    move v1, v11

    goto :goto_e

    :sswitch_18
    const/4 v1, 0x1

    goto :goto_f

    :sswitch_19
    const/4 v1, 0x4

    goto :goto_f

    :sswitch_1a
    const/4 v1, 0x2

    goto :goto_f

    :sswitch_1b
    const/4 v1, 0x3

    goto :goto_f

    :cond_30
    iget-object v6, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v6, v6, Lcom/csvreader/CsvReader$UserSettings;->Delimiter:C

    if-ne v0, v6, :cond_31

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endColumn()V

    goto/16 :goto_c

    :cond_31
    iget-boolean v6, p0, Lcom/csvreader/CsvReader;->useCustomRecordDelimiter:Z

    if-nez v6, :cond_32

    const/16 v6, 0xd

    if-eq v0, v6, :cond_33

    const/16 v6, 0xa

    if-eq v0, v6, :cond_33

    :cond_32
    iget-boolean v6, p0, Lcom/csvreader/CsvReader;->useCustomRecordDelimiter:Z

    if-eqz v6, :cond_2a

    iget-object v6, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iget-char v6, v6, Lcom/csvreader/CsvReader$UserSettings;->RecordDelimiter:C

    if-ne v0, v6, :cond_2a

    :cond_33
    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endColumn()V

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->endRecord()V

    goto/16 :goto_c

    :cond_34
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iget-object v2, v2, Lcom/csvreader/CsvReader$RawRecordBuffer;->Buffer:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iget v4, v4, Lcom/csvreader/CsvReader$RawRecordBuffer;->Position:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    iget-object v3, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v3, v3, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    iget-object v4, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v4, v4, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v5, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v5, v5, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csvreader/CsvReader;->rawRecord:Ljava/lang/String;

    goto/16 :goto_1

    :cond_35
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iget-object v1, v1, Lcom/csvreader/CsvReader$RawRecordBuffer;->Buffer:[C

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iget v3, v3, Lcom/csvreader/CsvReader$RawRecordBuffer;->Position:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/csvreader/CsvReader;->rawRecord:Ljava/lang/String;

    goto/16 :goto_1

    :cond_36
    const-string v0, ""

    iput-object v0, p0, Lcom/csvreader/CsvReader;->rawRecord:Ljava/lang/String;

    goto/16 :goto_1

    :cond_37
    move v11, v6

    move v6, v0

    move v0, v11

    goto/16 :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_8
        0x31 -> :sswitch_8
        0x32 -> :sswitch_8
        0x33 -> :sswitch_8
        0x34 -> :sswitch_8
        0x35 -> :sswitch_8
        0x36 -> :sswitch_8
        0x37 -> :sswitch_8
        0x44 -> :sswitch_9
        0x4f -> :sswitch_9
        0x55 -> :sswitch_9
        0x58 -> :sswitch_9
        0x61 -> :sswitch_7
        0x62 -> :sswitch_3
        0x64 -> :sswitch_9
        0x65 -> :sswitch_5
        0x66 -> :sswitch_4
        0x6e -> :sswitch_0
        0x6f -> :sswitch_9
        0x72 -> :sswitch_1
        0x74 -> :sswitch_2
        0x75 -> :sswitch_9
        0x76 -> :sswitch_6
        0x78 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x44 -> :sswitch_d
        0x4f -> :sswitch_c
        0x55 -> :sswitch_a
        0x58 -> :sswitch_b
        0x64 -> :sswitch_d
        0x6f -> :sswitch_c
        0x75 -> :sswitch_a
        0x78 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_16
        0x31 -> :sswitch_16
        0x32 -> :sswitch_16
        0x33 -> :sswitch_16
        0x34 -> :sswitch_16
        0x35 -> :sswitch_16
        0x36 -> :sswitch_16
        0x37 -> :sswitch_16
        0x44 -> :sswitch_17
        0x4f -> :sswitch_17
        0x55 -> :sswitch_17
        0x58 -> :sswitch_17
        0x61 -> :sswitch_15
        0x62 -> :sswitch_11
        0x64 -> :sswitch_17
        0x65 -> :sswitch_13
        0x66 -> :sswitch_12
        0x6e -> :sswitch_e
        0x6f -> :sswitch_17
        0x72 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_17
        0x76 -> :sswitch_14
        0x78 -> :sswitch_17
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x44 -> :sswitch_1b
        0x4f -> :sswitch_1a
        0x55 -> :sswitch_18
        0x58 -> :sswitch_19
        0x64 -> :sswitch_1b
        0x6f -> :sswitch_1a
        0x75 -> :sswitch_18
        0x78 -> :sswitch_19
    .end sparse-switch
.end method

.method public setCaptureRawRecord(Z)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput-boolean p1, v0, Lcom/csvreader/CsvReader$UserSettings;->CaptureRawRecord:Z

    return-void
.end method

.method public setComment(C)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput-char p1, v0, Lcom/csvreader/CsvReader$UserSettings;->Comment:C

    return-void
.end method

.method public setDelimiter(C)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput-char p1, v0, Lcom/csvreader/CsvReader$UserSettings;->Delimiter:C

    return-void
.end method

.method public setEscapeMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter escapeMode must be a valid value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput p1, v0, Lcom/csvreader/CsvReader$UserSettings;->EscapeMode:I

    return-void
.end method

.method public setHeaders([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iput-object p1, v1, Lcom/csvreader/CsvReader$HeadersHolder;->Headers:[Ljava/lang/String;

    iget-object v1, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget-object v1, v1, Lcom/csvreader/CsvReader$HeadersHolder;->IndexByName:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    array-length v2, p1

    iput v2, v1, Lcom/csvreader/CsvReader$HeadersHolder;->Length:I

    :goto_0
    iget-object v1, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget v1, v1, Lcom/csvreader/CsvReader$HeadersHolder;->Length:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iget-object v1, v1, Lcom/csvreader/CsvReader$HeadersHolder;->IndexByName:Ljava/util/HashMap;

    aget-object v2, p1, v0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/csvreader/CsvReader;->headersHolder:Lcom/csvreader/CsvReader$HeadersHolder;

    iput v0, v1, Lcom/csvreader/CsvReader$HeadersHolder;->Length:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRecordDelimiter(C)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csvreader/CsvReader;->useCustomRecordDelimiter:Z

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput-char p1, v0, Lcom/csvreader/CsvReader$UserSettings;->RecordDelimiter:C

    return-void
.end method

.method public setSafetySwitch(Z)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput-boolean p1, v0, Lcom/csvreader/CsvReader$UserSettings;->SafetySwitch:Z

    return-void
.end method

.method public setSkipEmptyRecords(Z)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput-boolean p1, v0, Lcom/csvreader/CsvReader$UserSettings;->SkipEmptyRecords:Z

    return-void
.end method

.method public setTextQualifier(C)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput-char p1, v0, Lcom/csvreader/CsvReader$UserSettings;->TextQualifier:C

    return-void
.end method

.method public setTrimWhitespace(Z)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput-boolean p1, v0, Lcom/csvreader/CsvReader$UserSettings;->TrimWhitespace:Z

    return-void
.end method

.method public setUseComments(Z)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput-boolean p1, v0, Lcom/csvreader/CsvReader$UserSettings;->UseComments:Z

    return-void
.end method

.method public setUseTextQualifier(Z)V
    .locals 1

    iget-object v0, p0, Lcom/csvreader/CsvReader;->userSettings:Lcom/csvreader/CsvReader$UserSettings;

    iput-boolean p1, v0, Lcom/csvreader/CsvReader$UserSettings;->UseTextQualifier:Z

    return-void
.end method

.method public skipLine()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->checkClosed()V

    iput v1, p0, Lcom/csvreader/CsvReader;->columnsCount:I

    iget-boolean v0, p0, Lcom/csvreader/CsvReader;->hasMoreData:Z

    if-eqz v0, :cond_6

    move v0, v1

    move v2, v1

    :cond_0
    iget-object v4, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v4, v4, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iget-object v5, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v5, v5, Lcom/csvreader/CsvReader$DataBuffer;->Count:I

    if-ne v4, v5, :cond_2

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->checkDataLength()V

    :goto_0
    iget-boolean v4, p0, Lcom/csvreader/CsvReader;->hasMoreData:Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/csvreader/CsvReader;->columnBuffer:Lcom/csvreader/CsvReader$ColumnBuffer;

    iput v1, v0, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    iget-object v0, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v3, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v3, v3, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    :goto_1
    iget-object v0, p0, Lcom/csvreader/CsvReader;->rawBuffer:Lcom/csvreader/CsvReader$RawRecordBuffer;

    iput v1, v0, Lcom/csvreader/CsvReader$RawRecordBuffer;->Position:I

    const-string v0, ""

    iput-object v0, p0, Lcom/csvreader/CsvReader;->rawRecord:Ljava/lang/String;

    return v2

    :cond_2
    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget-object v2, v2, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    iget-object v4, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v4, v4, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    aget-char v2, v2, v4

    const/16 v4, 0xd

    if-eq v2, v4, :cond_3

    const/16 v4, 0xa

    if-ne v2, v4, :cond_4

    :cond_3
    move v0, v3

    :cond_4
    iput-char v2, p0, Lcom/csvreader/CsvReader;->lastLetter:C

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/csvreader/CsvReader;->dataBuffer:Lcom/csvreader/CsvReader$DataBuffer;

    iget v4, v2, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method public skipRecord()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/csvreader/CsvReader;->checkClosed()V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/csvreader/CsvReader;->hasMoreData:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/csvreader/CsvReader;->readRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/csvreader/CsvReader;->currentRecord:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/csvreader/CsvReader;->currentRecord:J

    :cond_0
    return v0
.end method
