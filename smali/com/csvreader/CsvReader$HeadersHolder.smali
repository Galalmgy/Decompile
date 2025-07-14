.class Lcom/csvreader/CsvReader$HeadersHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csvreader/CsvReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadersHolder"
.end annotation


# instance fields
.field public Headers:[Ljava/lang/String;

.field public IndexByName:Ljava/util/HashMap;

.field public Length:I

.field private final this$0:Lcom/csvreader/CsvReader;


# direct methods
.method public constructor <init>(Lcom/csvreader/CsvReader;)V
    .locals 1

    iput-object p1, p0, Lcom/csvreader/CsvReader$HeadersHolder;->this$0:Lcom/csvreader/CsvReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csvreader/CsvReader$HeadersHolder;->Headers:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/csvreader/CsvReader$HeadersHolder;->Length:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/csvreader/CsvReader$HeadersHolder;->IndexByName:Ljava/util/HashMap;

    return-void
.end method
