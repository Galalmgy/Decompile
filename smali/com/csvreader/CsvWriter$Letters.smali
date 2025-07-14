.class Lcom/csvreader/CsvWriter$Letters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csvreader/CsvWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Letters"
.end annotation


# static fields
.field public static final BACKSLASH:C = '\\'

.field public static final COMMA:C = ','

.field public static final CR:C = '\r'

.field public static final LF:C = '\n'

.field public static final NULL:C = '\u0000'

.field public static final POUND:C = '#'

.field public static final QUOTE:C = '\"'

.field public static final SPACE:C = ' '

.field public static final TAB:C = '\t'


# instance fields
.field private final this$0:Lcom/csvreader/CsvWriter;


# direct methods
.method private constructor <init>(Lcom/csvreader/CsvWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/csvreader/CsvWriter$Letters;->this$0:Lcom/csvreader/CsvWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
