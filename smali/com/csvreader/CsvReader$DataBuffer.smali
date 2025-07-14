.class Lcom/csvreader/CsvReader$DataBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csvreader/CsvReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataBuffer"
.end annotation


# instance fields
.field public Buffer:[C

.field public ColumnStart:I

.field public Count:I

.field public LineStart:I

.field public Position:I

.field private final this$0:Lcom/csvreader/CsvReader;


# direct methods
.method public constructor <init>(Lcom/csvreader/CsvReader;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/csvreader/CsvReader$DataBuffer;->this$0:Lcom/csvreader/CsvReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/csvreader/CsvReader$DataBuffer;->Buffer:[C

    iput v1, p0, Lcom/csvreader/CsvReader$DataBuffer;->Position:I

    iput v1, p0, Lcom/csvreader/CsvReader$DataBuffer;->Count:I

    iput v1, p0, Lcom/csvreader/CsvReader$DataBuffer;->ColumnStart:I

    iput v1, p0, Lcom/csvreader/CsvReader$DataBuffer;->LineStart:I

    return-void
.end method
