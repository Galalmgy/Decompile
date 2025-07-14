.class Lcom/csvreader/CsvReader$StaticSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csvreader/CsvReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaticSettings"
.end annotation


# static fields
.field public static final INITIAL_COLUMN_BUFFER_SIZE:I = 0x32

.field public static final INITIAL_COLUMN_COUNT:I = 0xa

.field public static final MAX_BUFFER_SIZE:I = 0x400

.field public static final MAX_FILE_BUFFER_SIZE:I = 0x1000


# instance fields
.field private final this$0:Lcom/csvreader/CsvReader;


# direct methods
.method private constructor <init>(Lcom/csvreader/CsvReader;)V
    .locals 0

    iput-object p1, p0, Lcom/csvreader/CsvReader$StaticSettings;->this$0:Lcom/csvreader/CsvReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
