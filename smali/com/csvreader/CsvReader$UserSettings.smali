.class Lcom/csvreader/CsvReader$UserSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csvreader/CsvReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSettings"
.end annotation


# instance fields
.field public CaptureRawRecord:Z

.field public CaseSensitive:Z

.field public Comment:C

.field public Delimiter:C

.field public EscapeMode:I

.field public RecordDelimiter:C

.field public SafetySwitch:Z

.field public SkipEmptyRecords:Z

.field public TextQualifier:C

.field public TrimWhitespace:Z

.field public UseComments:Z

.field public UseTextQualifier:Z

.field private final this$0:Lcom/csvreader/CsvReader;


# direct methods
.method public constructor <init>(Lcom/csvreader/CsvReader;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/csvreader/CsvReader$UserSettings;->this$0:Lcom/csvreader/CsvReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/csvreader/CsvReader$UserSettings;->CaseSensitive:Z

    const/16 v0, 0x22

    iput-char v0, p0, Lcom/csvreader/CsvReader$UserSettings;->TextQualifier:C

    iput-boolean v1, p0, Lcom/csvreader/CsvReader$UserSettings;->TrimWhitespace:Z

    iput-boolean v1, p0, Lcom/csvreader/CsvReader$UserSettings;->UseTextQualifier:Z

    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/csvreader/CsvReader$UserSettings;->Delimiter:C

    iput-char v2, p0, Lcom/csvreader/CsvReader$UserSettings;->RecordDelimiter:C

    const/16 v0, 0x23

    iput-char v0, p0, Lcom/csvreader/CsvReader$UserSettings;->Comment:C

    iput-boolean v2, p0, Lcom/csvreader/CsvReader$UserSettings;->UseComments:Z

    iput v1, p0, Lcom/csvreader/CsvReader$UserSettings;->EscapeMode:I

    iput-boolean v1, p0, Lcom/csvreader/CsvReader$UserSettings;->SafetySwitch:Z

    iput-boolean v1, p0, Lcom/csvreader/CsvReader$UserSettings;->SkipEmptyRecords:Z

    iput-boolean v1, p0, Lcom/csvreader/CsvReader$UserSettings;->CaptureRawRecord:Z

    return-void
.end method
