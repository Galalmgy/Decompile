.class Lcom/csvreader/CsvReader$Letters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csvreader/CsvReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Letters"
.end annotation


# static fields
.field public static final ALERT:C = '\u0007'

.field public static final BACKSLASH:C = '\\'

.field public static final BACKSPACE:C = '\u0008'

.field public static final COMMA:C = ','

.field public static final CR:C = '\r'

.field public static final ESCAPE:C = '\u001b'

.field public static final FORM_FEED:C = '\u000c'

.field public static final LF:C = '\n'

.field public static final NULL:C = '\u0000'

.field public static final POUND:C = '#'

.field public static final QUOTE:C = '\"'

.field public static final SPACE:C = ' '

.field public static final TAB:C = '\t'

.field public static final VERTICAL_TAB:C = '\u000b'


# instance fields
.field private final this$0:Lcom/csvreader/CsvReader;


# direct methods
.method private constructor <init>(Lcom/csvreader/CsvReader;)V
    .locals 0

    iput-object p1, p0, Lcom/csvreader/CsvReader$Letters;->this$0:Lcom/csvreader/CsvReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
