.class Lcom/csvreader/CsvReader$ColumnBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csvreader/CsvReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnBuffer"
.end annotation


# instance fields
.field public Buffer:[C

.field public Position:I

.field private final this$0:Lcom/csvreader/CsvReader;


# direct methods
.method public constructor <init>(Lcom/csvreader/CsvReader;)V
    .locals 1

    iput-object p1, p0, Lcom/csvreader/CsvReader$ColumnBuffer;->this$0:Lcom/csvreader/CsvReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/csvreader/CsvReader$ColumnBuffer;->Buffer:[C

    const/4 v0, 0x0

    iput v0, p0, Lcom/csvreader/CsvReader$ColumnBuffer;->Position:I

    return-void
.end method
