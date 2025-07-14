.class Lcom/csvreader/CsvWriter$UserSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csvreader/CsvWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSettings"
.end annotation


# instance fields
.field public Comment:C

.field public Delimiter:C

.field public EscapeMode:I

.field public ForceQualifier:Z

.field public RecordDelimiter:C

.field public TextQualifier:C

.field public UseTextQualifier:Z

.field private final this$0:Lcom/csvreader/CsvWriter;


# direct methods
.method public constructor <init>(Lcom/csvreader/CsvWriter;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/csvreader/CsvWriter$UserSettings;->this$0:Lcom/csvreader/CsvWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x22

    iput-char v0, p0, Lcom/csvreader/CsvWriter$UserSettings;->TextQualifier:C

    iput-boolean v2, p0, Lcom/csvreader/CsvWriter$UserSettings;->UseTextQualifier:Z

    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/csvreader/CsvWriter$UserSettings;->Delimiter:C

    iput-char v1, p0, Lcom/csvreader/CsvWriter$UserSettings;->RecordDelimiter:C

    const/16 v0, 0x23

    iput-char v0, p0, Lcom/csvreader/CsvWriter$UserSettings;->Comment:C

    iput v2, p0, Lcom/csvreader/CsvWriter$UserSettings;->EscapeMode:I

    iput-boolean v1, p0, Lcom/csvreader/CsvWriter$UserSettings;->ForceQualifier:Z

    return-void
.end method
